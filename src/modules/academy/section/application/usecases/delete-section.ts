import { NotFoundError } from '../../../../../errors';
import { LessonTranslationRepository } from '../../../../multilang/lesson-translation';
import { SectionTranslationRepository } from '../../../../multilang/section-translation';
import { LessonRepository } from '../../../lesson';
import { Section } from '../../domain/entity';
import { SectionRepository } from '../../domain/repository';

export class DeleteSectionUseCase {
  private readonly sectionRepository: SectionRepository;
  private readonly sectionTranslationRepository: SectionTranslationRepository;
  private readonly lessonRepository: LessonRepository;
  private readonly lessonTranslationRepository: LessonTranslationRepository;

  constructor({
    sectionRepository,
    sectionTranslationRepository,
    lessonRepository,
    lessonTranslationRepository,
  }: {
    sectionRepository: SectionRepository;
    sectionTranslationRepository: SectionTranslationRepository;
    lessonRepository: LessonRepository;
    lessonTranslationRepository: LessonTranslationRepository;
  }) {
    this.sectionRepository = sectionRepository;
    this.sectionTranslationRepository = sectionTranslationRepository;
    this.lessonRepository = lessonRepository;
    this.lessonTranslationRepository = lessonTranslationRepository;
  }

  public async execute({ id }: { id: string }) {
    // verify if section exists
    const section = await this.sectionRepository.first({ where: { id } });
    if (!section) throw new NotFoundError({ message: 'Section could not be found.' });

    // delete sections with translations
    await this.sectionRepository.delete({ where: { id } });
    await this.sectionTranslationRepository.delete({ where: { section_id: section.id } });

    // delete lessons with translations
    const lessons = await this.lessonRepository.get({ where: { section_id: section.id } });
    for (const lesson of lessons) {
      await this.lessonRepository.delete({ where: { id: lesson.id } });
      await this.lessonTranslationRepository.delete({ where: { lesson_id: section.id } });
    }

    // order by display order
    const sections = await this.sectionRepository.get({ where: { course_id: section.course_id } });
    for (const s of sections) {
      if (s.display_order > section.display_order) {
        const section_updated = new Section({
          id: s.id,
          course_id: s.course_id,
          display_order: s.display_order - 1,
          thumbnail_url: s.thumbnail_url,
          background_url: s.background_url,
        });

        await this.sectionRepository.update({ where: { id: s.id }, entity: section_updated });
      }
    }
  }
}
