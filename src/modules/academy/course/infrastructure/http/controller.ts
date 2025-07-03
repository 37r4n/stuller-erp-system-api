import { Request, Response } from 'express';
import { config } from '../../../../../../config';
import { CreateCourseUseCase } from '../../application/usecases/create-course';
import { CourseAdapter } from '../database/adapter';
import { CourseTranslationAdapter } from '../../../../multilang/course-translation';
import { LanguageAdapter } from '../../../../multilang/language';
import { UserAdapter } from '../../../../auth/user';
import { IdGeneratorAdapter } from '../../../../../services';
import { DeleteCourseUseCase } from '../../application/usecases/delete-course';
import { SectionAdapter } from '../../../section';
import { SectionTranslationAdapter } from '../../../../multilang/section-translation';
import { LessonAdapter } from '../../../lesson';
import { LessonTranslationAdapter } from '../../../../multilang/lesson-translation';
import { UpdateCourseUseCase } from '../../application/usecases/update-course';
import { PaginateCoursesUseCase } from '../../application/usecases/paginate-courses';
import { PaginateCoursesByUserUseCase } from '../../application/usecases/pagiante-courses-by-user';
import { EnrollmentAdapter } from '../../../enrollment/infrastructure/database/adapter';

export class CourseController {
  static async index(req: Request, res: Response) {
    const language_code = req.headers['content-language'] || config.app.language;
    const page = Number(req.query.page || 1);
    const limit = Number(req.query.limit || 10);

    const usecase = new PaginateCoursesUseCase({
      courseRepository: new CourseAdapter(),
      courseTranslationRepository: new CourseTranslationAdapter(),
      languageRepository: new LanguageAdapter(),
      userRepository: new UserAdapter(),
    });

    const { data, pagiantion } = await usecase.execute({
      language_code,
      page,
      limit,
    });

    res.json({ data, metadata: { pagiantion } });
  }

  static async me(req: Request, res: Response) {
    const language_code = req.headers['content-language'] || config.app.language;
    const page = Number(req.query.page || 1);
    const limit = Number(req.query.limit || 10);
    const user_id = req.user.id;

    const usecase = new PaginateCoursesByUserUseCase({
      enrollmentRepository: new EnrollmentAdapter(),
      courseRepository: new CourseAdapter(),
      courseTranslationRepository: new CourseTranslationAdapter(),
      languageRepository: new LanguageAdapter(),
      userRepository: new UserAdapter(),
    });

    const { data, pagiantion } = await usecase.execute({
      language_code,
      page,
      limit,
      user_id,
    });

    res.json({ data, metadata: { pagiantion } });
  }

  static async create(req: Request, res: Response) {
    const language_code = req.headers['content-language'] || config.app.language;
    const { author_id, title, description, thumbnail_url, background_url, manual_url } = req.body;

    const usecase = new CreateCourseUseCase({
      courseRepository: new CourseAdapter(),
      courseTranslationRepository: new CourseTranslationAdapter(),
      languageRepository: new LanguageAdapter(),
      userRepository: new UserAdapter(),
      idGenerator: new IdGeneratorAdapter(),
    });

    const data = await usecase.execute({
      language_code,
      author_id,
      title,
      description,
      thumbnail_url,
      background_url,
      manual_url,
    });

    res.json({ data });
  }

  static async update(req: Request, res: Response) {
    const language_code = req.headers['content-language'] || config.app.language;
    const id = req.params.id as string;
    const { title, description, thumbnail_url, background_url, manual_url } = req.body;

    const usecase = new UpdateCourseUseCase({
      courseRepository: new CourseAdapter(),
      courseTranslationRepository: new CourseTranslationAdapter(),
      languageRepository: new LanguageAdapter(),
      userRepository: new UserAdapter(),
    });

    const data = await usecase.execute({
      id,
      language_code,
      title,
      description,
      thumbnail_url,
      background_url,
      manual_url,
    });

    res.json({ data });
  }

  static async delete(req: Request, res: Response) {
    const id = req.params.id as string;

    const usecase = new DeleteCourseUseCase({
      courseRepository: new CourseAdapter(),
      courseTranslationRepository: new CourseTranslationAdapter(),
      sectionRepository: new SectionAdapter(),
      sectionTranslationRepository: new SectionTranslationAdapter(),
      lessonRepository: new LessonAdapter(),
      lessonTranslationRepository: new LessonTranslationAdapter(),
    });

    const data = await usecase.execute({ id });
    res.json({ data });
  }
}
