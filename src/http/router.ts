import { Router } from 'express';
import { Async } from './middlewares/async';
import { Wrapper } from './middlewares/wrapper';
import { CourseRouter } from '../modules/academy/course';
import { SectionRouter } from '../modules/academy/section';
import { LessonRouter } from '../modules/academy/lesson/infrastructure/http/router';
import { AuthRouter } from '../modules/auth/auth/infrastructure/http/router';
import { EnrollmentRouter } from '../modules/academy/enrollment/infrastructure/http/router';
import { UserRouter } from '../modules/auth/user/infrastructure/http/router';
import { ProgressRouter } from '../modules/academy/progress/infrastrucutre/http/router';

export const router = Router();
router.use('/', Wrapper(CourseRouter, Async));
router.use('/', Wrapper(SectionRouter, Async));
router.use('/', Wrapper(LessonRouter, Async));
router.use('/', Wrapper(AuthRouter, Async));
router.use('/', Wrapper(EnrollmentRouter, Async));
router.use('/', Wrapper(UserRouter, Async));
router.use('/', Wrapper(ProgressRouter, Async));
