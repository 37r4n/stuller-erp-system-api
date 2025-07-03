import { NotFoundError } from '../../../../../errors';
import { UserRepository } from '../../../../auth/user';
import { CourseTranslationRepository } from '../../../../multilang/course-translation';
import { LanguageRepository } from '../../../../multilang/language';
import { CourseRepository } from '../../../course';
import { EnrollmentRepository } from '../../domain/repository';

export class PaginateEnrollementsUseCase {
  private readonly enrollmentRepository: EnrollmentRepository;
  private readonly courseRepository: CourseRepository;
  private readonly languageRepository: LanguageRepository;
  private readonly courseTranslationRepository: CourseTranslationRepository;
  private readonly userRepository: UserRepository;

  constructor({
    enrollmentRepository,
    courseRepository,
    languageRepository,
    courseTranslationRepository,
    userRepository,
  }: {
    enrollmentRepository: EnrollmentRepository;
    courseRepository: CourseRepository;
    languageRepository: LanguageRepository;
    courseTranslationRepository: CourseTranslationRepository;
    userRepository: UserRepository;
  }) {
    this.enrollmentRepository = enrollmentRepository;
    this.courseRepository = courseRepository;
    this.languageRepository = languageRepository;
    this.courseTranslationRepository = courseTranslationRepository;
    this.userRepository = userRepository;
  }

  public async execute({
    page,
    limit,
    course_id,
    language_code,
  }: {
    page: number;
    limit: number;
    course_id: string;
    language_code: string;
  }) {
    // verify if course exists
    const course = await this.courseRepository.first({ where: { id: course_id } });
    if (!course) throw new NotFoundError({ message: 'Course could not be found.' });

    // verify if language exists
    const language = await this.languageRepository.first({ where: { code: language_code } });
    if (!language) throw new NotFoundError({ message: 'Language could not be found.' });

    // get enrollments
    const enrollments = this.enrollmentRepository.get({
      where: { course_id },
    });

    // create pagination
    if (limit < 1) limit = 1;
    if (page < 1) page = 1;
    const total_items = (await enrollments).length;
    const total_pages = Math.max(1, Math.ceil(total_items / limit));
    const current_page = page;
    const per_page = limit;
    const offset = (page - 1) * limit;
    const results = (await enrollments).slice(offset, offset + limit);

    // get more information about results
    const data = [];
    for (const enrollment of results) {
      // get translation

      // get author
      const user = await this.userRepository.first({ where: { id: enrollment.user_id } });

      const translation =
        (await this.courseTranslationRepository.first({ where: { course_id: course.id, language_id: language.id } })) ||
        (await this.courseTranslationRepository.first({ where: { course_id: course.id } }));

      const author = await this.userRepository.first({ where: { id: course.author_id } });

      // create response
      data.push({
        id: enrollment.id,

        user: {
          id: user?.id ?? null,
          name: user?.name ?? null,
          avatar_url: user?.avatar_url ?? null,
        },

        course: {
          id: course.id,
          title: translation?.title ?? null,
          description: translation?.description ?? null,
          thumbnail_url: course.thumbnail_url,
          background_url: course.background_url,
          manual_url: translation?.manual_url ?? null,

          author: {
            id: author?.id ?? null,
            code: author?.code ?? null,
            name: author?.name ?? null,
            avatar_url: author?.avatar_url ?? null,
          },
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
