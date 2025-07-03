import { NotFoundError } from '../../../../../errors';
import { LessonTranslationRepository } from '../../../../multilang/lesson-translation';
import { Lesson } from '../../domain/entity';
import { LessonRepository } from '../../domain/repository';

export class DeleteLessonUseCase {
  private readonly lessonRepository: LessonRepository;
  private readonly lessonTranslationRepository: LessonTranslationRepository;

  constructor({
    lessonRepository,
    lessonTranslationRepository,
  }: {
    lessonRepository: LessonRepository;
    lessonTranslationRepository: LessonTranslationRepository;
  }) {
    this.lessonRepository = lessonRepository;
    this.lessonTranslationRepository = lessonTranslationRepository;
  }

  public async execute({ id }: { id: string }) {
    // verify if lesson exists
    const lesson = await this.lessonRepository.first({ where: { id } });
    if (!lesson) throw new NotFoundError({ message: 'Lesson could not be found.' });

    // delete lesson with translations
    await this.lessonRepository.delete({ where: { id } });
    await this.lessonTranslationRepository.delete({ where: { lesson_id: lesson.id } });

    // order by display order
    const lessons = await this.lessonRepository.get({ where: { section_id: lesson.section_id } });
    for (const l of lessons) {
      if (l.display_order > lesson.display_order) {
        const lesson_updated = new Lesson({
          id: l.id,
          section_id: l.section_id,
          display_order: l.display_order - 1,
          duration_seconds: l.duration_seconds,
          thumbnail_url: l.thumbnail_url,
          background_url: l.background_url,
        });

        await this.lessonRepository.update({ where: { id: l.id }, entity: lesson_updated });
      }
    }
  }
}
