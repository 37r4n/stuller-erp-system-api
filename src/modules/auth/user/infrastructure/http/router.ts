import { Router } from 'express';
import { UserController } from './controller';
import { Auth } from '../../../../../http';

export const UserRouter = Router()
  .get('/v1/auth/users', [Auth], UserController.index)
  .get('/v1/auth/users/:id', [Auth], UserController.find);
