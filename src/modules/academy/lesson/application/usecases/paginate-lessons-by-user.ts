import { NotFoundError } from '../../../../../errors';
import { LanguageRepository } from '../../../../multilang/language';
import { LessonTranslationRepository } from '../../../../multilang/lesson-translation';
import { CourseRepository } from '../../../course';
import { EnrollmentRepository } from '../../../enrollment';
import { ProgressRepository } from '../../../progress';
import { SectionRepository } from '../../../section';
import { LessonRepository } from '../../domain/repository';

export class PaginateLessonsByUserUseCase {
  private readonly enrollmentRepository: EnrollmentRepository;
  private readonly courseRepository: CourseRepository;
  private readonly sectionRepository: SectionRepository;
  private readonly languageRepository: LanguageRepository;
  private readonly lessonRepository: LessonRepository;
  private readonly lessonTranslationRepository: LessonTranslationRepository;
  private readonly progressRepository: ProgressRepository;

  constructor({
    enrollmentRepository,
    courseRepository,
    sectionRepository,
    languageRepository,
    lessonRepository,
    lessonTranslationRepository,
    progressRepository,
  }: {
    enrollmentRepository: EnrollmentRepository;
    courseRepository: CourseRepository;
    sectionRepository: SectionRepository;
    languageRepository: LanguageRepository;
    lessonRepository: LessonRepository;
    lessonTranslationRepository: LessonTranslationRepository;
    progressRepository: ProgressRepository;
  }) {
    this.enrollmentRepository = enrollmentRepository;
    this.courseRepository = courseRepository;
    this.sectionRepository = sectionRepository;
    this.languageRepository = languageRepository;
    this.lessonRepository = lessonRepository;
    this.lessonTranslationRepository = lessonTranslationRepository;
    this.progressRepository = progressRepository;
  }

  public async execute({
    language_code,
    course_id,
    section_id,
    page,
    limit,
    user_id,
  }: {
    language_code: string;
    course_id: string;
    section_id: string;
    page: number;
    limit: number;
    user_id: string;
  }) {
    // verify if enrollment exists
    const enrollment = await this.enrollmentRepository.first({ where: { user_id, course_id } });
    if (!enrollment) throw new NotFoundError({ message: 'Enrollment could not be found.' });

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
    let is_next_lesson_unlocked = false;

    for (const lesson of results) {
      // get translation
      const lesson_translation =
        (await this.lessonTranslationRepository.first({
          where: { lesson_id: lesson.id, language_id: language.id },
        })) || (await this.lessonTranslationRepository.first({ where: { lesson_id: lesson.id } }));

      if (lesson.display_order == 1) {
        const section = await this.sectionRepository.first({ where: { id: lesson.section_id } });
        if (section?.display_order == 1) is_next_lesson_unlocked = true;

        if (section && section.display_order > 1) {
          const last_section = await this.sectionRepository.first({ where: { course_id, display_order: section?.display_order - 1 } })

          if (last_section) {
            const last_lessons = await this.lessonRepository.get({ where: { section_id: last_section.id } })

            for (const lesson of last_lessons) {
              const is_watched = await this.progressRepository.first({ where: { user_id, lesson_id: lesson.id } })
              if (!is_watched) {
                is_next_lesson_unlocked = false
                break
              } else {
                is_next_lesson_unlocked = true
              }
            }
          }
        }
      }

      // create response
      data.push({
        id: lesson.id,
        title: lesson_translation?.title ?? null,
        description: lesson_translation?.description ?? null,
        duration_seconds: lesson.duration_seconds,
        display_order: lesson.display_order,
        thumbnail_url: lesson.thumbnail_url,
        background_url: lesson.background_url,
        resource_url: is_next_lesson_unlocked ? (lesson_translation?.resource_url ?? null) : null,
        is_unlocked: is_next_lesson_unlocked,
      });

      const is_watched = await this.progressRepository.first({ where: { lesson_id: lesson.id, user_id } });
      if (!is_watched) is_next_lesson_unlocked = false;
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
