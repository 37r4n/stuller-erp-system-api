import { NotFoundError } from '../../../../../errors';
import { LanguageRepository } from '../../../../multilang/language';
import { SectionTranslation, SectionTranslationRepository } from '../../../../multilang/section-translation';
import { Section } from '../../domain/entity';
import { SectionRepository } from '../../domain/repository';

export class UpdateSectionUseCase {
  private readonly sectionRepository: SectionRepository;
  private readonly languageRepository: LanguageRepository;
  private readonly sectionTranslationRepository: SectionTranslationRepository;

  constructor({
    sectionRepository,
    languageRepository,
    sectionTranslationRepository,
  }: {
    sectionRepository: SectionRepository;
    languageRepository: LanguageRepository;
    sectionTranslationRepository: SectionTranslationRepository;
  }) {
    this.sectionRepository = sectionRepository;
    this.languageRepository = languageRepository;
    this.sectionTranslationRepository = sectionTranslationRepository;
  }

  public async execute({
    id,
    language_code,
    title,
    description,
    display_order,
    thumbnail_url,
    background_url,
  }: {
    id: string;
    language_code: string;
    title?: string;
    description?: string | null;
    display_order?: number;
    thumbnail_url?: string | null;
    background_url?: string | null;
  }) {
    // verify if language exists
    const language = await this.languageRepository.first({ where: { code: language_code } });
    if (!language) throw new NotFoundError({ message: 'Language could not be found.' });

    // verify if section exists
    const section = await this.sectionRepository.first({ where: { id } });
    if (!section) throw new NotFoundError({ message: 'Section could not be found.' });

    // verify if translation exists
    const translation = await this.sectionTranslationRepository.first({
      where: { section_id: section.id, language_id: language.id },
    });
    if (!translation) throw new NotFoundError({ message: 'Translation could not be found.' });

    // order by display order
    const sections = (await this.sectionRepository.get({ where: { course_id: section.course_id } })).sort(
      (a, b) => a.display_order - b.display_order,
    );

    display_order = display_order ?? section.display_order;
    if (display_order < 1) display_order = 1;
    if (display_order > sections.length) display_order = sections.length;

    for (const s of sections) {
      if (s.display_order >= display_order && s.id != section.id) {
        const section_updated = new Section({
          id: s.id,
          course_id: s.course_id,
          display_order: s.display_order + 1,
          thumbnail_url: s.thumbnail_url,
          background_url: s.background_url,
        });

        await this.sectionRepository.update({ where: { id: s.id }, entity: section_updated });
      }
    }

    // update section
    const section_updated = new Section({
      id: section.id,
      course_id: section.course_id,
      thumbnail_url: thumbnail_url ?? section.thumbnail_url,
      background_url: background_url ?? section.background_url,
      display_order: display_order ?? section.display_order,
    });

    // update section translation
    const section_translation_udpated = new SectionTranslation({
      id: translation.id,
      section_id: translation.section_id,
      language_id: translation.language_id,
      title: title ?? translation.title,
      description: description ?? translation.description,
    });

    // load changes
    await this.sectionRepository.update({ where: { id }, entity: section_updated });
    await this.sectionTranslationRepository.update({
      where: { id: section_translation_udpated.id },
      entity: section_translation_udpated,
    });

    // return response
    return {
      id: section_updated.id,
      title: section_translation_udpated.title,
      description: section_translation_udpated.description,
      display_order: section_updated.display_order,
      thumbnail_url: section_updated.thumbnail_url,
      background_url: section_updated.background_url,
    };
  }
}
