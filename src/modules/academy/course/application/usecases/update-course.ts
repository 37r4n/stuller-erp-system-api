import { NotFoundError } from '../../../../../errors';
import { UserRepository } from '../../../../auth/user';
import { CourseTranslation, CourseTranslationRepository } from '../../../../multilang/course-translation';
import { LanguageRepository } from '../../../../multilang/language';
import { Course } from '../../domain/entity';
import { CourseRepository } from '../../domain/repository';

export class UpdateCourseUseCase {
  private readonly courseRepository: CourseRepository;
  private readonly courseTranslationRepository: CourseTranslationRepository;
  private readonly languageRepository: LanguageRepository;
  private readonly userRepository: UserRepository;

  constructor({
    courseRepository,
    courseTranslationRepository,
    languageRepository,
    userRepository,
  }: {
    courseRepository: CourseRepository;
    courseTranslationRepository: CourseTranslationRepository;
    languageRepository: LanguageRepository;
    userRepository: UserRepository;
  }) {
    this.courseRepository = courseRepository;
    this.courseTranslationRepository = courseTranslationRepository;
    this.languageRepository = languageRepository;
    this.userRepository = userRepository;
  }

  public async execute({
    id,
    language_code,
    title,
    description,
    thumbnail_url,
    background_url,
    manual_url,
  }: {
    id: string;
    language_code: string;
    title?: string;
    description?: string | null;
    thumbnail_url?: string | null;
    background_url?: string | null;
    manual_url?: string | null;
  }) {
    // verify if language exists
    const language = await this.languageRepository.first({ where: { code: language_code } });
    if (!language) throw new NotFoundError({ message: 'Language could not be found.' });

    // verify if course exists
    const course = await this.courseRepository.first({ where: { id } });
    if (!course) throw new NotFoundError({ message: 'Course could not be found.' });

    // verify if translation exists
    const translation = await this.courseTranslationRepository.first({
      where: { course_id: course.id, language_id: language.id },
    });
    if (!translation) throw new NotFoundError({ message: 'Translation could not be found.' });

    // update course
    const course_updated = new Course({
      id,
      author_id: course.author_id,
      thumbnail_url: thumbnail_url ?? course.thumbnail_url,
      background_url: background_url ?? course.background_url,
    });

    // update course translation
    const course_translation_udpated = new CourseTranslation({
      id: translation.id,
      course_id: translation.course_id,
      language_id: translation.language_id,
      title: title ?? translation.title,
      description: description ?? translation.description,
      manual_url: manual_url ?? translation.manual_url,
    });

    // load changes
    await this.courseRepository.update({
      where: { id },
      entity: course_updated,
    });

    await this.courseTranslationRepository.update({
      where: { id: translation.id },
      entity: course_translation_udpated,
    });

    // get author
    const author = await this.userRepository.first({ where: { id: course.author_id } });

    // return response
    return {
      id: course_updated.id,
      title: course_translation_udpated.title,
      description: course_translation_udpated.description,
      thumbnail_url: course_updated.thumbnail_url,
      background_url: course_updated.background_url,
      manual_url: course_translation_udpated.manual_url,

      author: {
        id: author?.id,
        name: author?.name,
        avatar_url: author?.avatar_url,
      },
    };
  }
}
