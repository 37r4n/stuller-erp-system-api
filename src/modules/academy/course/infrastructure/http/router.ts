import { Router } from 'express';
import { CourseController } from './controller';
import { Auth } from '../../../../../http';

export const CourseRouter = Router()
  .get('/v1/academy/courses', [Auth], CourseController.index)
  .get('/v1/me/academy/courses', [Auth], CourseController.me)
  .post('/v1/academy/courses', [Auth], CourseController.create)
  .patch('/v1/academy/courses/:id', [Auth], CourseController.update)
  .delete('/v1/academy/courses/:id', [Auth], CourseController.delete);
