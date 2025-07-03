import { NotFoundError } from '../../../../../errors';
import { IdGenerator } from '../../../../../services';
import { LanguageRepository } from '../../../../multilang/language';
import { LessonTranslation, LessonTranslationRepository } from '../../../../multilang/lesson-translation';
import { SectionRepository } from '../../../section';
import { Lesson } from '../../domain/entity';
import { LessonRepository } from '../../domain/repository';

export class CreateLessonUseCase {
  private readonly lessonRepository: LessonRepository;
  private readonly lessonTranslationRepository: LessonTranslationRepository;
  private readonly languageRepository: LanguageRepository;
  private readonly sectionRepository: SectionRepository;
  private readonly idGenerator: IdGenerator;

  constructor({
    lessonRepository,
    lessonTranslationRepository,
    languageRepository,
    sectionRepository,
    idGenerator,
  }: {
    lessonRepository: LessonRepository;
    lessonTranslationRepository: LessonTranslationRepository;
    languageRepository: LanguageRepository;
    sectionRepository: SectionRepository;
    idGenerator: IdGenerator;
  }) {
    this.lessonRepository = lessonRepository;
    this.lessonTranslationRepository = lessonTranslationRepository;
    this.languageRepository = languageRepository;
    this.sectionRepository = sectionRepository;
    this.idGenerator = idGenerator;
  }

  public async execute({
    language_code,
    section_id,
    title,
    description = null,
    display_order,
    duration_seconds,
    resource_url,
    thumbnail_url = null,
    background_url = null,
  }: {
    language_code: string;
    section_id: string;
    title: string;
    description: string | null;
    display_order: number;
    duration_seconds: number;
    resource_url: string;
    thumbnail_url: string | null;
    background_url: string | null;
  }) {
    // verify if language exists
    const language = await this.languageRepository.first({ where: { code: language_code } });
    if (!language) throw new NotFoundError({ message: 'Language could not be found.' });

    // verify if section exists
    const section = await this.sectionRepository.first({ where: { id: section_id } });
    if (!section) throw new NotFoundError({ message: 'Section could not be found.' });

    // order by display order
    const lessons = (await this.lessonRepository.get({ where: { section_id } })).sort(
      (a, b) => a.display_order - b.display_order,
    );

    if (display_order < 1) display_order = 1;
    if (display_order > lessons.length + 1) display_order = lessons.length + 1;

    for (const lesson of lessons) {
      if (lesson.display_order >= display_order) {
        const lesson_updated = new Lesson({
          id: lesson.id,
          section_id: lesson.section_id,
          display_order: lesson.display_order + 1,
          duration_seconds: lesson.duration_seconds,
          thumbnail_url: lesson.thumbnail_url,
          background_url: lesson.background_url,
        });

        await this.lessonRepository.update({ where: { id: lesson.id }, entity: lesson_updated });
      }
    }

    // create lesson
    const new_lesson = new Lesson({
      id: await this.idGenerator.generate(),
      section_id,
      display_order,
      duration_seconds,
      thumbnail_url,
      background_url,
    });

    const new_lesson_translation = new LessonTranslation({
      id: await this.idGenerator.generate(),
      lesson_id: new_lesson.id,
      language_id: language.id,
      title,
      description,
      resource_url,
    });

    // load changes
    await this.lessonRepository.create({ entity: new_lesson });
    await this.lessonTranslationRepository.create({ entity: new_lesson_translation });

    // return response
    return {
      id: new_lesson.id,
      title: new_lesson_translation.title,
      description: new_lesson_translation.description,
      duration_seconds: new_lesson.duration_seconds,
      display_order: new_lesson.display_order,
      thumbnail_url: new_lesson.thumbnail_url,
      background_url: new_lesson.background_url,
      resource_url: new_lesson_translation.resource_url,

      language: {
        id: language.id,
        code: language.code,
        name: language.name,
      },
    };
  }
}
