import { NotFoundError } from '../../../../../errors';
import { UserRepository } from '../../../../auth/user';
import { CourseTranslationRepository } from '../../../../multilang/course-translation';
import { LanguageRepository } from '../../../../multilang/language';
import { EnrollmentRepository } from '../../../enrollment';
import { CourseRepository } from '../../domain/repository';

export class PaginateCoursesByUserUseCase {
  private readonly courseRepository: CourseRepository;
  private readonly courseTranslationRepository: CourseTranslationRepository;
  private readonly languageRepository: LanguageRepository;
  private readonly userRepository: UserRepository;
  private readonly enrollmentRepository: EnrollmentRepository;

  constructor({
    courseRepository,
    courseTranslationRepository,
    languageRepository,
    userRepository,
    enrollmentRepository,
  }: {
    courseRepository: CourseRepository;
    courseTranslationRepository: CourseTranslationRepository;
    languageRepository: LanguageRepository;
    userRepository: UserRepository;
    enrollmentRepository: EnrollmentRepository;
  }) {
    this.courseRepository = courseRepository;
    this.courseTranslationRepository = courseTranslationRepository;
    this.languageRepository = languageRepository;
    this.userRepository = userRepository;
    this.enrollmentRepository = enrollmentRepository;
  }

  public async execute({
    language_code,
    page,
    limit,
    user_id,
  }: {
    language_code: string;
    page: number;
    limit: number;
    user_id: string;
  }) {
    // verify if language exists
    const language = await this.languageRepository.first({ where: { code: language_code } });
    if (!language) throw new NotFoundError({ message: 'Language could not be found.' });

    const user = await this.userRepository.first({ where: { id: user_id } });
    if (!user) throw new NotFoundError({ message: 'User could not be found.' });

    //get enrollments by user
    const enrollment = await this.enrollmentRepository.first({ where: { user_id } });
    if (!enrollment) throw new NotFoundError({ message: 'Enrollment could not be found.' });

    // get courses
    const courses = await this.courseRepository.get({});
    const user_courses = courses.filter((course) => course.id === enrollment.course_id);

    // create pagination
    if (limit < 1) limit = 1;
    if (page < 1) page = 1;
    const total_items = (await user_courses).length;
    const total_pages = Math.max(1, Math.ceil(total_items / limit));
    const current_page = page;
    const per_page = limit;
    const offset = (page - 1) * limit;
    const results = user_courses.slice(offset, offset + limit);

    // get more information about results
    const data = [];
    for (const course of results) {
      // get translation
      const course_translation =
        (await this.courseTranslationRepository.first({ where: { course_id: course.id, language_id: language.id } })) ||
        (await this.courseTranslationRepository.first({ where: { course_id: course.id } }));

      // get author
      const author = await this.userRepository.first({ where: { id: course.author_id } });

      // create response
      data.push({
        id: course.id,
        thumbnail_url: course.thumbnail_url,
        background_url: course.background_url,
        title: course_translation?.title ?? null,
        description: course_translation?.description ?? null,
        manual_url: course_translation?.manual_url ?? null,

        author: {
          id: author?.id ?? null,
          code: author?.code ?? null,
          name: author?.name ?? null,
          avatar_url: author?.avatar_url ?? null,
        },
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
