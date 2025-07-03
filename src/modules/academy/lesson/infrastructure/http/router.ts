import { Router } from 'express';
import { LessonController } from './controller';
import { Auth } from '../../../../../http';

export const LessonRouter = Router()
  .get('/v1/academy/courses/:course_id/sections/:section_id/lessons', [Auth], LessonController.index)
  .get('/v1/me/academy/courses/:course_id/sections/:section_id/lessons', [Auth], LessonController.me)
  .get('/v1/me/academy/courses/:course_id/sections/:section_id/lessons/:lesson_id', [Auth], LessonController.meFirst)
  .post('/v1/academy/lessons', [Auth], LessonController.create)
  .patch('/v1/academy/lessons/:id', [Auth], LessonController.update)
  .delete('/v1/academy/lessons/:id', [Auth], LessonController.delete);
