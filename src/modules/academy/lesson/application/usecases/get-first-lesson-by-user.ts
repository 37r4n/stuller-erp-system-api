import { NotFoundError } from '../../../../../errors';
import { LanguageRepository } from '../../../../multilang/language';
import { LessonTranslationRepository } from '../../../../multilang/lesson-translation';
import { CourseRepository } from '../../../course';
import { EnrollmentRepository } from '../../../enrollment';
import { SectionRepository } from '../../../section';
import { LessonRepository } from '../../domain/repository';

export class GetFirstLessonByUserUseCase {
  private readonly enrollmentRepository: EnrollmentRepository;
  private readonly courseRepository: CourseRepository;
  private readonly sectionRepository: SectionRepository;
  private readonly languageRepository: LanguageRepository;
  private readonly lessonRepository: LessonRepository;
  private readonly lessonTranslationRepository: LessonTranslationRepository;

  constructor({
    enrollmentRepository,
    courseRepository,
    sectionRepository,
    languageRepository,
    lessonRepository,
    lessonTranslationRepository,
  }: {
    enrollmentRepository: EnrollmentRepository;
    courseRepository: CourseRepository;
    sectionRepository: SectionRepository;
    languageRepository: LanguageRepository;
    lessonRepository: LessonRepository;
    lessonTranslationRepository: LessonTranslationRepository;
  }) {
    this.enrollmentRepository = enrollmentRepository;
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

    user_id,
    lesson_id,
  }: {
    language_code: string;
    course_id: string;
    section_id: string;
    user_id: string;
    lesson_id: string;
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

    // verify if lesson exists
    const lesson = await this.lessonRepository.first({ where: { id: lesson_id } });
    if (!lesson) throw new NotFoundError({ message: 'Lesson could not be found.' });

    // verify if language exists
    const language = await this.languageRepository.first({ where: { code: language_code } });
    if (!language) throw new NotFoundError({ message: 'Language could not be found.' });

    // get translation
    const lesson_translation =
      (await this.lessonTranslationRepository.first({
        where: { lesson_id, language_id: language.id },
      })) || (await this.lessonTranslationRepository.first({ where: { lesson_id } }));

    const data = {
      id: lesson.id,
      title: lesson_translation?.title ?? null,
      description: lesson_translation?.description ?? null,
      duration_seconds: lesson.duration_seconds,
      display_order: lesson.display_order,
      thumbnail_url: lesson.thumbnail_url,
      background_url: lesson.background_url,
      resource_url: lesson_translation?.resource_url ?? null,
    };

    // return response
    return data;
  }
}
