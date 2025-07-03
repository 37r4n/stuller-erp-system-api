import { Request, Response } from 'express';
import { PaginateEnrollementsUseCase } from '../../application/usecases/paginate-enrollments';
import { EnrollmentAdapter } from '../database/adapter';
import { CourseAdapter } from '../../../course';
import { UserAdapter } from '../../../../auth/user';
import { CreateEnrollmentUseCase } from '../../application/usecases/create-enrollment';
import { IdGeneratorAdapter } from '../../../../../services';
import { CourseTranslationAdapter } from '../../../../multilang/course-translation';
import { LanguageAdapter } from '../../../../multilang/language';
import { config } from '../../../../../../config';

export class EnrollmentController {
  static async index(req: Request, res: Response) {
    const language_code = req.headers['content-language'] || config.app.language;
    const course_id = req.params.course_id;
    const page = Number(req.query.page || 1);
    const limit = Number(req.query.limit || 10);

    const usecase = new PaginateEnrollementsUseCase({
      enrollmentRepository: new EnrollmentAdapter(),
      courseRepository: new CourseAdapter(),
      languageRepository: new LanguageAdapter(),
      courseTranslationRepository: new CourseTranslationAdapter(),
      userRepository: new UserAdapter(),
    });

    const { data, pagiantion } = await usecase.execute({
      language_code,
      course_id,
      page,
      limit,
    });

    res.json({ data, metadata: { pagiantion } });
  }

  static async create(req: Request, res: Response) {
    const language_code = req.headers['content-language'] || config.app.language;
    const user_id = req.body.user_id;
    const course_id = req.body.course_id;

    const usecase = new CreateEnrollmentUseCase({
      enrollmentRepository: new EnrollmentAdapter(),
      courseRepository: new CourseAdapter(),
      userReposistory: new UserAdapter(),
      languageRepository: new LanguageAdapter(),
      courseTranslationRepository: new CourseTranslationAdapter(),
      idGenerator: new IdGeneratorAdapter(),
    });

    const data = await usecase.execute({
      course_id,
      user_id,
      language_code,
    });

    res.json({ data });
  }
}
