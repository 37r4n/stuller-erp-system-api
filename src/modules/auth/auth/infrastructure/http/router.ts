import { Router } from 'express';
import { AuthController } from './controller';
import { Auth } from '../../../../../http';

export const AuthRouter = Router()
  .post('/v1/auth/login', AuthController.login)
  .post('/v1/auth/me', [Auth], AuthController.me)
  .post('/v1/auth/refresh', [Auth], AuthController.refresh)
  .post('/v1/auth/logout', [Auth], AuthController.logout);
