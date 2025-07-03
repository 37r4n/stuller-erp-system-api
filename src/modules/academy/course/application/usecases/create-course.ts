import { NotFoundError } from '../../../../../errors';
import { IdGenerator } from '../../../../../services';
import { UserRepository } from '../../../../auth/user';
import { CourseTranslation, CourseTranslationRepository } from '../../../../multilang/course-translation';
import { LanguageRepository } from '../../../../multilang/language';
import { Course } from '../../domain/entity';
import { CourseRepository } from '../../domain/repository';

export class CreateCourseUseCase {
  private readonly courseRepository: CourseRepository;
  private readonly courseTranslationRepository: CourseTranslationRepository;
  private readonly languageRepository: LanguageRepository;
  private readonly userRepository: UserRepository;
  private readonly idGenerator: IdGenerator;

  constructor({
    courseRepository,
    courseTranslationRepository,
    languageRepository,
    userRepository,
    idGenerator,
  }: {
    courseRepository: CourseRepository;
    courseTranslationRepository: CourseTranslationRepository;
    languageRepository: LanguageRepository;
    userRepository: UserRepository;
    idGenerator: IdGenerator;
  }) {
    this.courseRepository = courseRepository;
    this.courseTranslationRepository = courseTranslationRepository;
    this.languageRepository = languageRepository;
    this.userRepository = userRepository;
    this.idGenerator = idGenerator;
  }

  public async execute({
    language_code,
    author_id,
    title,
    description = null,
    thumbnail_url = null,
    background_url = null,
    manual_url = null,
  }: {
    language_code: string;
    author_id: string;
    title: string;
    description: string | null;
    thumbnail_url: string | null;
    background_url: string | null;
    manual_url: string | null;
  }) {
    // verify if language exists
    const language = await this.languageRepository.first({ where: { code: language_code } });
    if (!language) throw new NotFoundError({ message: 'Language could not be found.' });

    // verify if author exists
    const author = await this.userRepository.first({ where: { id: author_id } });
    if (!author) throw new NotFoundError({ message: 'Author could not be found.' });

    // create course
    const new_course = new Course({
      id: await this.idGenerator.generate(),
      author_id,
      thumbnail_url,
      background_url,
    });

    // create translation
    const new_course_translation = new CourseTranslation({
      id: await this.idGenerator.generate(),
      course_id: new_course.id,
      language_id: language.id,
      title,
      description,
      manual_url,
    });

    // Load changes
    await this.courseRepository.create({ entity: new_course });
    await this.courseTranslationRepository.create({ entity: new_course_translation });

    // return response
    return {
      id: new_course.id,
      title: new_course_translation.title,
      description: new_course_translation.description,
      thumbnail_url: new_course.thumbnail_url,
      background_url: new_course.background_url,
      manual_url: new_course_translation.manual_url,

      author: {
        id: author.id,
        name: author.name,
        avatar_url: author.avatar_url,
      },
    };
  }
}
