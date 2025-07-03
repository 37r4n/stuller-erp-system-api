import { Request, Response } from 'express';
import { UserAdapter } from '../../../../auth/user';
import { PaginateUsersUseCase } from '../../application/usecases/paginate-users';
import { FindUserUseCase } from '../../application/usecases/find-user';

export class UserController {
  static async index(req: Request, res: Response) {
    const page = Number(req.query.page || 1);
    const limit = Number(req.query.limit || 10);
    const search = String(req.query.search || '');

    const usecase = new PaginateUsersUseCase({
      userRepository: new UserAdapter(),
    });

    const { data, pagiantion } = await usecase.execute({
      page,
      limit,
      search,
    });

    res.json({ data, metadata: { pagiantion } });
  }

  static async find(req: Request, res: Response) {
    const id = String(req.params.id);

    const usecase = new FindUserUseCase({
      userRepository: new UserAdapter(),
    });

    const data = await usecase.execute({
      id,
    });

    res.json({ data });
  }
}
