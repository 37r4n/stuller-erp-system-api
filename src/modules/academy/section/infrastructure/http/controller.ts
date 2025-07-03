import { Request, Response } from 'express';
import { config } from '../../../../../../config';
import { CreateSectionUseCase } from '../../application/usecases/create-section';
import { SectionAdapter } from '../database/adapter';
import { LanguageAdapter } from '../../../../multilang/language';
import { CourseAdapter } from '../../../course';
import { IdGeneratorAdapter } from '../../../../../services';
import { SectionTranslationAdapter } from '../../../../multilang/section-translation';
import { PaginateSectionsUseCase } from '../../application/usecases/pagiante-sections';
import { UpdateSectionUseCase } from '../../application/usecases/update-section';
import { DeleteSectionUseCase } from '../../application/usecases/delete-section';
import { LessonAdapter } from '../../../lesson';
import { LessonTranslationAdapter } from '../../../../multilang/lesson-translation';
import { PaginateSectionsByUserUseCase } from '../../application/usecases/paginate-sections-by-user';
import { EnrollmentAdapter } from '../../../enrollment/infrastructure/database/adapter';
import { ProgressAdapter } from '../../../progress/infrastrucutre/database/adapter';

export class SectionController {
  static async index(req: Request, res: Response) {
    const language_code = req.headers['content-language'] || config.app.language;
    const course_id = req.params.course_id;
    const page = Number(req.query.page || 1);
    const limit = Number(req.query.limit || 10);

    const usecase = new PaginateSectionsUseCase({
      courseRepository: new CourseAdapter(),
      sectionRepository: new SectionAdapter(),
      sectionTranslationRepository: new SectionTranslationAdapter(),
      languageRepository: new LanguageAdapter(),
    });

    const { data, pagiantion } = await usecase.execute({
      language_code,
      course_id,
      page,
      limit,
    });

    res.json({ data, metadata: { pagiantion } });
  }

  static async me(req: Request, res: Response) {
    const language_code = req.headers['content-language'] || config.app.language;
    const course_id = req.params.course_id;
    const page = Number(req.query.page || 1);
    const limit = Number(req.query.limit || 10);
    const user_id = req.user.id;

    const usecase = new PaginateSectionsByUserUseCase({
      enrollmentRepository: new EnrollmentAdapter(),
      courseRepository: new CourseAdapter(),
      sectionRepository: new SectionAdapter(),
      sectionTranslationRepository: new SectionTranslationAdapter(),
      languageRepository: new LanguageAdapter(),
      lessonRepository: new LessonAdapter(),
      progressRepository: new ProgressAdapter(),
    });

    const { data, pagiantion } = await usecase.execute({
      user_id,
      language_code,
      course_id,
      page,
      limit,
    });

    res.json({ data, metadata: { pagiantion } });
  }

  static async create(req: Request, res: Response) {
    const language_code = req.headers['content-language'] || config.app.language;
    const { course_id, title, description, display_order, thumbnail_url, background_url } = req.body;

    const usecase = new CreateSectionUseCase({
      sectionRepository: new SectionAdapter(),
      sectionTranslationRepository: new SectionTranslationAdapter(),
      languageRepository: new LanguageAdapter(),
      courseRepository: new CourseAdapter(),
      idGenerator: new IdGeneratorAdapter(),
    });

    const data = await usecase.execute({
      language_code,
      course_id,
      title,
      description,
      display_order,
      thumbnail_url,
      background_url,
    });

    res.json({ data });
  }

  static async update(req: Request, res: Response) {
    const language_code = req.headers['content-language'] || config.app.language;
    const id = req.params.id as string;
    const { title, description, display_order, thumbnail_url, background_url } = req.body;

    const usecase = new UpdateSectionUseCase({
      sectionRepository: new SectionAdapter(),
      sectionTranslationRepository: new SectionTranslationAdapter(),
      languageRepository: new LanguageAdapter(),
    });

    const data = await usecase.execute({
      id,
      language_code,
      title,
      description,
      display_order,
      thumbnail_url,
      background_url,
    });

    res.json({ data });
  }

  static async delete(req: Request, res: Response) {
    const id = req.params.id as string;

    const usecase = new DeleteSectionUseCase({
      sectionRepository: new SectionAdapter(),
      sectionTranslationRepository: new SectionTranslationAdapter(),
      lessonRepository: new LessonAdapter(),
      lessonTranslationRepository: new LessonTranslationAdapter(),
    });

    const data = await usecase.execute({ id });
    res.json({ data });
  }
}
