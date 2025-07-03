import { NotFoundError } from '../../../../../errors';
import { CourseTranslationRepository } from '../../../../multilang/course-translation';
import { LessonTranslationRepository } from '../../../../multilang/lesson-translation';
import { SectionTranslationRepository } from '../../../../multilang/section-translation';
import { LessonRepository } from '../../../lesson';
import { SectionRepository } from '../../../section';
import { CourseRepository } from '../../domain/repository';

export class DeleteCourseUseCase {
  private readonly courseRepository: CourseRepository;
  private readonly courseTranslationRepository: CourseTranslationRepository;
  private readonly sectionRepository: SectionRepository;
  private readonly sectionTranslationRepository: SectionTranslationRepository;
  private readonly lessonRepository: LessonRepository;
  private readonly lessonTranslationRepository: LessonTranslationRepository;

  constructor({
    courseRepository,
    courseTranslationRepository,
    sectionRepository,
    sectionTranslationRepository,
    lessonRepository,
    lessonTranslationRepository,
  }: {
    courseRepository: CourseRepository;
    courseTranslationRepository: CourseTranslationRepository;
    sectionRepository: SectionRepository;
    sectionTranslationRepository: SectionTranslationRepository;
    lessonRepository: LessonRepository;
    lessonTranslationRepository: LessonTranslationRepository;
  }) {
    this.courseRepository = courseRepository;
    this.courseTranslationRepository = courseTranslationRepository;
    this.sectionRepository = sectionRepository;
    this.sectionTranslationRepository = sectionTranslationRepository;
    this.lessonRepository = lessonRepository;
    this.lessonTranslationRepository = lessonTranslationRepository;
  }

  public async execute({ id }: { id: string }) {
    // verify if course exists
    const course = await this.courseRepository.first({ where: { id } });
    // delete course with translations
    if (!course) throw new NotFoundError({ message: 'Course could not be found.' });

    await this.courseRepository.delete({ where: { id: course.id } });
    await this.courseTranslationRepository.delete({ where: { course_id: course.id } });

    // delete sections with translations
    const sections = await this.sectionRepository.get({ where: { course_id: course.id } });
    for (const section of sections) {
      await this.sectionRepository.delete({ where: { id: section.id } });
      await this.sectionTranslationRepository.delete({ where: { section_id: section.id } });

      // delete lessons with translations
      const lessons = await this.lessonRepository.get({ where: { section_id: section.id } });
      for (const lesson of lessons) {
        await this.lessonRepository.delete({ where: { id: lesson.id } });
        await this.lessonTranslationRepository.delete({ where: { lesson_id: section.id } });
      }
    }
  }
}
