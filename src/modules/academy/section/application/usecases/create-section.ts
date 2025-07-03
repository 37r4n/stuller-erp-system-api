import { NotFoundError } from '../../../../../errors';
import { IdGenerator } from '../../../../../services';
import { LanguageRepository } from '../../../../multilang/language';
import { SectionTranslation, SectionTranslationRepository } from '../../../../multilang/section-translation';
import { CourseRepository } from '../../../course';
import { Section } from '../../domain/entity';
import { SectionRepository } from '../../domain/repository';

export class CreateSectionUseCase {
  private readonly sectionRepository: SectionRepository;
  private readonly sectionTranslationRepository: SectionTranslationRepository;
  private readonly languageRepository: LanguageRepository;
  private readonly courseRepository: CourseRepository;
  private readonly idGenerator: IdGenerator;

  constructor({
    sectionRepository,
    sectionTranslationRepository,
    languageRepository,
    courseRepository,
    idGenerator,
  }: {
    sectionRepository: SectionRepository;
    sectionTranslationRepository: SectionTranslationRepository;
    languageRepository: LanguageRepository;
    courseRepository: CourseRepository;
    idGenerator: IdGenerator;
  }) {
    this.sectionRepository = sectionRepository;
    this.sectionTranslationRepository = sectionTranslationRepository;
    this.languageRepository = languageRepository;
    this.courseRepository = courseRepository;
    this.idGenerator = idGenerator;
  }

  public async execute({
    language_code,
    course_id,
    title,
    description = null,
    display_order,
    thumbnail_url = null,
    background_url = null,
  }: {
    language_code: string;
    course_id: string;
    title: string;
    description: string | null;
    display_order: number;
    thumbnail_url: string | null;
    background_url: string | null;
  }) {
    // verify if language exists
    const language = await this.languageRepository.first({ where: { code: language_code } });
    if (!language) throw new NotFoundError({ message: 'Language could not be found.' });

    // verify if course exists
    const course = await this.courseRepository.first({ where: { id: course_id } });
    if (!course) throw new NotFoundError({ message: 'Course could not be found.' });

    // order by display order
    const sections = (await this.sectionRepository.get({ where: { course_id } })).sort(
      (a, b) => a.display_order - b.display_order,
    );

    if (display_order < 1) display_order = 1;
    if (display_order > sections.length + 1) display_order = sections.length + 1;

    for (const section of sections) {
      if (section.display_order >= display_order) {
        const section_updated = new Section({
          id: section.id,
          course_id: section.course_id,
          display_order: section.display_order + 1,
          thumbnail_url: section.thumbnail_url,
          background_url: section.background_url,
        });

        await this.sectionRepository.update({ where: { id: section.id }, entity: section_updated });
      }
    }

    // create section
    const new_section = new Section({
      id: await this.idGenerator.generate(),
      course_id,
      display_order,
      thumbnail_url,
      background_url,
    });

    const new_section_translation = new SectionTranslation({
      id: await this.idGenerator.generate(),
      section_id: new_section.id,
      language_id: language.id,
      title,
      description,
    });

    // load changes
    await this.sectionRepository.create({ entity: new_section });
    await this.sectionTranslationRepository.create({ entity: new_section_translation });

    // return response
    return {
      id: new_section.id,
      title: new_section_translation.title,
      description: new_section_translation.description,
      display_order: new_section.display_order,
      thumbnail_url: new_section.thumbnail_url,
      background_url: new_section.background_url,
    };
  }
}
