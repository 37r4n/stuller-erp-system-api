import { Request, Response } from 'express';
import { AuthLoginUsecase } from '../../../auth/application/usecase.login';
import { UserAdapter } from '../../../user';
import { HasherAdapter, IdGeneratorAdapter, TokenGeneratorAdapter } from '../../../../../services';
import { AuthValidateUsecase } from '../../../auth/application/usecase.validate';
import { UnauthorizedError } from '../../../../../errors';
import { SessionAdapter } from '../../../session';
import { AuthRefreshUsecase } from '../../application/usecase.refresh';
import { AuthLogoutUsecase } from '../../application/usecase.logout';

export class AuthController {
  static async login(req: Request, res: Response) {
    const { username } = req.body;

    const usecase = new AuthLoginUsecase({
      sessionRepository: new SessionAdapter(),
      userRepository: new UserAdapter(),
      tokenGenerator: new TokenGeneratorAdapter(),
      idGenerator: new IdGeneratorAdapter(),
      hasher: new HasherAdapter(),
    });

    const data = await usecase.execute({
      code: username,
    });

    res.json({ data });
  }

  static async me(req: Request, res: Response) {
    const access_token = req.headers.authorization?.replace('Bearer ', '');
    if (!access_token) throw new UnauthorizedError({ message: 'Unauthorized.' });

    const usecase = new AuthValidateUsecase({
      sessionRepository: new SessionAdapter(),
      userRepository: new UserAdapter(),
      hasher: new HasherAdapter(),
    });

    const data = await usecase.execute({
      access_token,
    });

    res.json({ data });
  }

  static async refresh(req: Request, res: Response) {
    const user = req.user;
    const { refresh_token } = req.body;

    const usecase = new AuthRefreshUsecase({
      sessionRepository: new SessionAdapter(),
      userRepository: new UserAdapter(),
      tokenGenerator: new TokenGeneratorAdapter(),
      idGenerator: new IdGeneratorAdapter(),
      hasher: new HasherAdapter(),
    });

    const data = await usecase.execute({
      user_id: user.id,
      refresh_token,
    });

    res.json({ data });
  }

  static async logout(req: Request, res: Response) {
    const access_token = req.headers.authorization?.replace('Bearer ', '');
    const user = req.user;
    if (!access_token) throw new UnauthorizedError({ message: 'Unauthorized.' });

    const usecase = new AuthLogoutUsecase({
      sessionRepository: new SessionAdapter(),
      hasher: new HasherAdapter(),
    });

    const data = await usecase.execute({
      user_id: user.id,
      access_token,
    });

    res.json({ data });
  }
}
