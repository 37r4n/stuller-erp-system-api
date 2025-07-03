import { UserTypeProps } from '../../modules/user';

declare module 'express-serve-static-core' {
  interface Request {
    user?: User;
  }
}
