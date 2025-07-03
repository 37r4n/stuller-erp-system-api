import { NextFunction, Request, Response } from 'express';
import { UnauthorizedError } from '../../errors';
import { AuthValidateUsecase } from '../../modules/auth/auth/application/usecase.validate';
import { UserAdapter } from '../../modules/auth/user';
import { SessionAdapter } from '../../modules/auth/session';
import { HasherAdapter } from '../../services';

export const Auth = async (req: Request, _res: Response, next: NextFunction) => {
  try {
    const access_token = req.headers.authorization?.replace('Bearer ', '');
    if (!access_token) throw new UnauthorizedError({ message: 'Unauthorized.' });

    const userRepository = new UserAdapter();
    const sessionRepository = new SessionAdapter();
    const hasher = new HasherAdapter();

    const usecase = new AuthValidateUsecase({
      userRepository,
      sessionRepository,
      hasher,
    });

    const user = await usecase.execute({ access_token });
    req.user = user;

    next();
  } catch (error) {
    throw new UnauthorizedError({ message: 'Unauthorized.' });
  }
};
