import { Router } from 'express';
import { EnrollmentController } from './controller';
import { Auth } from '../../../../../http';

export const EnrollmentRouter = Router()
  .get('/v1/academy/courses/:course_id/enrollments', [Auth], EnrollmentController.index)
  .post('/v1/academy/enrollments', [Auth], EnrollmentController.create);
