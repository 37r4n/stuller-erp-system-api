import { Request, Response } from 'express';
import { config } from '../../../../../../config';
import { IdGeneratorAdapter } from '../../../../../services';
import { LanguageAdapter } from '../../../../multilang/language';
import { LessonTranslationAdapter } from '../../../../multilang/lesson-translation';
import { SectionAdapter } from '../../../section';
import { CreateLessonUseCase } from '../../application/usecases/create-lesson';
import { LessonAdapter } from '../database/adapter';
import { UpdateLessonUseCase } from '../../application/usecases/update-lesson';
import { DeleteLessonUseCase } from '../../application/usecases/delete-lesson';
import { PaginateLessonsUseCase } from '../../application/usecases/paginate-lesson';
import { CourseAdapter } from '../../../course';
import { PaginateLessonsByUserUseCase } from '../../application/usecases/paginate-lessons-by-user';
import { EnrollmentAdapter } from '../../../enrollment/infrastructure/database/adapter';
import { ProgressAdapter } from '../../../progress/infrastrucutre/database/adapter';
import { GetFirstLessonByUserUseCase } from '../../application/usecases/get-first-lesson-by-user';

export class LessonController {
  static async index(req: Request, res: Response) {
    const language_code = req.headers['content-language'] || config.app.language;
    const course_id = req.params.course_id;
    const section_id = req.params.section_id;
    const page = Number(req.query.page || 1);
    const limit = Number(req.query.limit || 10);

    const usecase = new PaginateLessonsUseCase({
      courseRepository: new CourseAdapter(),
      sectionRepository: new SectionAdapter(),
      languageRepository: new LanguageAdapter(),
      lessonRepository: new LessonAdapter(),
      lessonTranslationRepository: new LessonTranslationAdapter(),
    });

    const { data, pagiantion } = await usecase.execute({
      language_code,
      course_id,
      section_id,
      page,
      limit,
    });

    res.json({ data, metadata: { pagiantion } });
  }

  static async meFirst(req: Request, res: Response) {
    const language_code = req.headers['content-language'] || config.app.language;
    const course_id = req.params.course_id;
    const section_id = req.params.section_id;
    const lesson_id = req.params.lesson_id;
    const user_id = req.user.id;

    const usecase = new GetFirstLessonByUserUseCase({
      enrollmentRepository: new EnrollmentAdapter(),
      courseRepository: new CourseAdapter(),
      sectionRepository: new SectionAdapter(),
      languageRepository: new LanguageAdapter(),
      lessonRepository: new LessonAdapter(),
      lessonTranslationRepository: new LessonTranslationAdapter(),
    });

    const data = await usecase.execute({
      language_code,
      course_id,
      section_id,
      user_id,
      lesson_id,
    });

    res.json({ data });
  }

  static async me(req: Request, res: Response) {
    const language_code = req.headers['content-language'] || config.app.language;
    const course_id = req.params.course_id;
    const section_id = req.params.section_id;
    const page = Number(req.query.page || 1);
    const limit = Number(req.query.limit || 10);
    const user_id = req.user.id;

    const usecase = new PaginateLessonsByUserUseCase({
      enrollmentRepository: new EnrollmentAdapter(),
      courseRepository: new CourseAdapter(),
      sectionRepository: new SectionAdapter(),
      languageRepository: new LanguageAdapter(),
      lessonRepository: new LessonAdapter(),
      lessonTranslationRepository: new LessonTranslationAdapter(),
      progressRepository: new ProgressAdapter(),
    });

    const { data, pagiantion } = await usecase.execute({
      language_code,
      course_id,
      section_id,
      page,
      limit,
      user_id,
    });

    res.json({ data, metadata: { pagiantion } });
  }

  static async create(req: Request, res: Response) {
    const language_code = req.headers['content-language'] || config.app.language;
    const {
      section_id,
      title,
      description,
      display_order,
      duration_seconds,
      resource_url,
      thumbnail_url,
      background_url,
    } = req.body;

    const usecase = new CreateLessonUseCase({
      lessonRepository: new LessonAdapter(),
      lessonTranslationRepository: new LessonTranslationAdapter(),
      languageRepository: new LanguageAdapter(),
      sectionRepository: new SectionAdapter(),
      idGenerator: new IdGeneratorAdapter(),
    });

    const data = await usecase.execute({
      language_code,
      section_id,
      title,
      description,
      display_order,
      duration_seconds,
      resource_url,
      thumbnail_url,
      background_url,
    });

    res.json({ data });
  }

  static async update(req: Request, res: Response) {
    const language_code = req.headers['content-language'] || config.app.language;
    const id = req.params.id as string;
    const { title, description, display_order, duration_seconds, resource_url, thumbnail_url, background_url } =
      req.body;

    const usecase = new UpdateLessonUseCase({
      lessonRepository: new LessonAdapter(),
      lessonTranslationRepository: new LessonTranslationAdapter(),
      languageRepository: new LanguageAdapter(),
    });

    const data = await usecase.execute({
      id,
      language_code,
      title,
      description,
      display_order,
      duration_seconds,
      resource_url,
      thumbnail_url,
      background_url,
    });

    res.json({ data });
  }

  static async delete(req: Request, res: Response) {
    const id = req.params.id as string;

    const usecase = new DeleteLessonUseCase({
      lessonRepository: new LessonAdapter(),
      lessonTranslationRepository: new LessonTranslationAdapter(),
    });

    const data = await usecase.execute({ id });
    res.json({ data });
  }
}
