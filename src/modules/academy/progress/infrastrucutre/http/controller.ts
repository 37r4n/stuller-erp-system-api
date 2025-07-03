import { Request, Response } from 'express';
import { IdGeneratorAdapter } from '../../../../../services';
import { UserAdapter } from '../../../../auth/user';
import { LessonAdapter } from '../../../lesson';
import { CreateProgressUseCase } from '../../application/usecases/create-progress';
import { ProgressAdapter } from '../database/adapter';

export class ProgressController {

  static async create(req: Request, res: Response) {
    const user_id = req.user.id
    const lesson_id = req.params.lesson_id;

    const usecase = new CreateProgressUseCase({
      lessonRepository: new LessonAdapter(),
      userRepository: new UserAdapter(),
      progressRepository: new ProgressAdapter(),
      idGenerator: new IdGeneratorAdapter(),
    });

    const data = await usecase.execute({
      user_id, lesson_id
    });

    res.json({ data });
  }


}
