import { NotFoundError } from '../../../../../errors';
import { LanguageRepository } from '../../../../multilang/language';
import { LessonTranslationRepository } from '../../../../multilang/lesson-translation';
import { CourseRepository } from '../../../course';
import { SectionRepository } from '../../../section';
import { LessonRepository } from '../../domain/repository';

export class PaginateLessonsUseCase {
  private readonly courseRepository: CourseRepository;
  private readonly sectionRepository: SectionRepository;
  private readonly languageRepository: LanguageRepository;
  private readonly lessonRepository: LessonRepository;
  private readonly lessonTranslationRepository: LessonTranslationRepository;

  constructor({
    courseRepository,
    sectionRepository,
    languageRepository,
    lessonRepository,
    lessonTranslationRepository,
  }: {
    courseRepository: CourseRepository;
    sectionRepository: SectionRepository;
    languageRepository: LanguageRepository;
    lessonRepository: LessonRepository;
    lessonTranslationRepository: LessonTranslationRepository;
  }) {
    this.courseRepository = courseRepository;
    this.sectionRepository = sectionRepository;
    this.languageRepository = languageRepository;
    this.lessonRepository = lessonRepository;
    this.lessonTranslationRepository = lessonTranslationRepository;
  }

  public async execute({
    language_code,
    course_id,
    section_id,
    page,
    limit,
  }: {
    language_code: string;
    course_id: string;
    section_id: string;
    page: number;
    limit: number;
  }) {
    // verify if course exists
    const course = await this.courseRepository.first({ where: { id: course_id } });
    if (!course) throw new NotFoundError({ message: 'Course could not be found.' });

    // verify if section exists
    const section = await this.sectionRepository.first({ where: { id: section_id } });
    if (!section) throw new NotFoundError({ message: 'Section could not be found.' });

    // verify if language exists
    const language = await this.languageRepository.first({ where: { code: language_code } });
    if (!language) throw new NotFoundError({ message: 'Language could not be found.' });

    // get lessons
    const lessons = (await this.lessonRepository.get({ where: { section_id } })).sort(
      (a, b) => a.display_order - b.display_order,
    );

    // create pagination
    if (limit < 1) limit = 1;
    if (page < 1) page = 1;
    const total_items = (await lessons).length;
    const total_pages = Math.max(1, Math.ceil(total_items / limit));
    const current_page = page;
    const per_page = limit;
    const offset = (page - 1) * limit;
    const results = (await lessons).slice(offset, offset + limit);

    // get more information about results
    const data = [];
    for (const lesson of results) {
      // get translation
      const lesson_translation =
        (await this.lessonTranslationRepository.first({
          where: { lesson_id: lesson.id, language_id: language.id },
        })) || (await this.lessonTranslationRepository.first({ where: { lesson_id: course.id } }));

      // create response
      data.push({
        id: lesson.id,
        title: lesson_translation?.title ?? null,
        description: lesson_translation?.description ?? null,
        duration_seconds: lesson.duration_seconds,
        display_order: lesson.display_order,
        thumbnail_url: lesson.thumbnail_url,
        background_url: lesson.background_url,
        resource_url: lesson_translation?.resource_url ?? null,
      });
    }

    // return response
    return {
      data,
      pagiantion: {
        total_items,
        total_pages,
        current_page,
        per_page,
      },
    };
  }
}
