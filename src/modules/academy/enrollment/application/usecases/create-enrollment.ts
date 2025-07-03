import { InvalidError, NotFoundError } from '../../../../../errors';
import { IdGenerator } from '../../../../../services';
import { UserRepository } from '../../../../auth/user';
import { CourseTranslationRepository } from '../../../../multilang/course-translation';
import { LanguageRepository } from '../../../../multilang/language';
import { CourseRepository } from '../../../course';
import { Enrollment } from '../../domain/entity';
import { EnrollmentRepository } from '../../domain/repository';

export class CreateEnrollmentUseCase {
  private readonly enrollmentRepository: EnrollmentRepository;
  private readonly userReposistory: UserRepository;
  private readonly courseRepository: CourseRepository;
  private readonly languageRepository: LanguageRepository;
  private readonly courseTranslationRepository: CourseTranslationRepository;
  private readonly idGenerator: IdGenerator;

  constructor({
    enrollmentRepository,
    userReposistory,
    courseRepository,
    languageRepository,
    courseTranslationRepository,
    idGenerator,
  }: {
    enrollmentRepository: EnrollmentRepository;
    userReposistory: UserRepository;
    courseRepository: CourseRepository;
    languageRepository: LanguageRepository;
    courseTranslationRepository: CourseTranslationRepository;
    idGenerator: IdGenerator;
  }) {
    this.enrollmentRepository = enrollmentRepository;
    this.userReposistory = userReposistory;
    this.courseRepository = courseRepository;
    this.languageRepository = languageRepository;
    this.courseTranslationRepository = courseTranslationRepository;
    this.idGenerator = idGenerator;
  }

  public async execute({
    user_id,
    course_id,
    language_code,
  }: {
    user_id: string;
    course_id: string;
    language_code: string;
  }) {
    // verify if user exists
    const user = await this.userReposistory.first({ where: { id: user_id } });
    if (!user) throw new NotFoundError({ message: 'User could not be found.' });

    // verify if course exists
    const course = await this.courseRepository.first({ where: { id: course_id } });
    if (!course) throw new NotFoundError({ message: 'Course could not be found.' });

    // verify if language exists
    const language = await this.languageRepository.first({ where: { code: language_code } });
    if (!language) throw new NotFoundError({ message: 'Language could not be found.' });

    // verify if user was enrollment in this course
    const enrollment = await this.enrollmentRepository.first({ where: { user_id, course_id } });
    if (enrollment) throw new InvalidError({ message: 'User was registered in this course.' });

    //create course
    const enrollement = new Enrollment({
      id: await this.idGenerator.generate(),
      user_id,
      course_id,
    });

    await this.enrollmentRepository.create({ entity: enrollement });

    const translation =
      (await this.courseTranslationRepository.first({ where: { course_id: course.id, language_id: language.id } })) ||
      (await this.courseTranslationRepository.first({ where: { course_id: course.id } }));

    const author = await this.userReposistory.first({ where: { id: course.author_id } });

    // create response
    const data = {
      id: enrollement.id,

      user: {
        id: user.id,
        code: user.code,
        name: user.code,
        avatar_url: user.avatar_url,
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
    };

    // return response
    return data;
  }
}
