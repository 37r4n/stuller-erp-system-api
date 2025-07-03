import { NotFoundError } from '../../../../../errors';
import { LanguageRepository } from '../../../../multilang/language';
import { LessonTranslation, LessonTranslationRepository } from '../../../../multilang/lesson-translation';
import { Lesson } from '../../domain/entity';
import { LessonRepository } from '../../domain/repository';

export class UpdateLessonUseCase {
  private readonly lessonRepository: LessonRepository;
  private readonly languageRepository: LanguageRepository;
  private readonly lessonTranslationRepository: LessonTranslationRepository;

  constructor({
    lessonRepository,
    languageRepository,
    lessonTranslationRepository,
  }: {
    lessonRepository: LessonRepository;
    languageRepository: LanguageRepository;
    lessonTranslationRepository: LessonTranslationRepository;
  }) {
    this.lessonRepository = lessonRepository;
    this.languageRepository = languageRepository;
    this.lessonTranslationRepository = lessonTranslationRepository;
  }

  public async execute({
    id,
    language_code,
    title,
    description,
    display_order,
    duration_seconds,
    resource_url,
    thumbnail_url,
    background_url,
  }: {
    id: string;
    language_code: string;
    title?: string;
    description?: string | null;
    display_order?: number;
    duration_seconds?: number;
    resource_url?: string;
    thumbnail_url?: string | null;
    background_url?: string | null;
  }) {
    // verify if language exists
    const language = await this.languageRepository.first({ where: { code: language_code } });
    if (!language) throw new NotFoundError({ message: 'Language could not be found.' });

    // verify if lesson exists
    const lesson = await this.lessonRepository.first({ where: { id } });
    if (!lesson) throw new NotFoundError({ message: 'Lesson could not be found.' });

    // verify if translation exists
    const translation = await this.lessonTranslationRepository.first({
      where: { lesson_id: lesson.id, language_id: language.id },
    });
    if (!translation) throw new NotFoundError({ message: 'Translation could not be found.' });

    // order by display order
    const lessons = (await this.lessonRepository.get({ where: { section_id: lesson.section_id } })).sort(
      (a, b) => a.display_order - b.display_order,
    );

    display_order = display_order ?? lesson.display_order;
    if (display_order < 1) display_order = 1;
    if (display_order > lessons.length) display_order = lessons.length;

    for (const l of lessons) {
      if (l.display_order >= display_order && l.id != lesson.id) {
        const lesson_updated = new Lesson({
          id: l.id,
          section_id: l.section_id,
          display_order: l.display_order + 1,
          duration_seconds: l.duration_seconds,
          thumbnail_url: l.thumbnail_url,
          background_url: l.background_url,
        });

        await this.lessonRepository.update({ where: { id: l.id }, entity: lesson_updated });
      }
    }

    // update lesson
    const lesson_updated = new Lesson({
      id: lesson.id,
      section_id: lesson.section_id,
      display_order: display_order ?? lesson.display_order,
      duration_seconds: duration_seconds ?? lesson.duration_seconds,
      thumbnail_url: thumbnail_url ?? lesson.thumbnail_url,
      background_url: background_url ?? lesson.background_url,
    });

    // update lesson translation
    const lesson_translation_udpated = new LessonTranslation({
      id: translation.id,
      lesson_id: translation.lesson_id,
      language_id: translation.language_id,
      title: title ?? translation.title,
      description: description ?? translation.description,
      resource_url: resource_url ?? translation.resource_url,
    });

    // load changes
    await this.lessonRepository.update({ where: { id }, entity: lesson_updated });
    await this.lessonTranslationRepository.update({
      where: { id: lesson_translation_udpated.id },
      entity: lesson_translation_udpated,
    });

    // return response
    return {
      id: lesson_updated.id,
      title: lesson_translation_udpated.title,
      description: lesson_translation_udpated.description,
      display_order: lesson_updated.display_order,
      duration_seconds: lesson_updated.duration_seconds,
      thumbnail_url: lesson_updated.thumbnail_url,
      background_url: lesson_updated.background_url,
      resource_url: lesson_translation_udpated.resource_url,
    };
  }
}
