import { Router } from 'express';
import { ProgressController } from './controller';
import { Auth } from '../../../../../http';

export const ProgressRouter = Router()
  .post('/v1/me/academy/courses/:course_id/sections/:section_id/lessons/:lesson_id/progress', [Auth], ProgressController.create)
