import { Router } from 'express';
import { SectionController } from './controller';
import { Auth } from '../../../../../http';

export const SectionRouter = Router()
  .get('/v1/academy/courses/:course_id/sections', [Auth], SectionController.index)
  .get('/v1/me/academy/courses/:course_id/sections', [Auth], SectionController.me)
  .post('/v1/academy/sections', [Auth], SectionController.create)
  .patch('/v1/academy/sections/:id', [Auth], SectionController.update)
  .delete('/v1/academy/sections/:id', [Auth], SectionController.delete);
