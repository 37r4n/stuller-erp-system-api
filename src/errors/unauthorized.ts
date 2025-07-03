import { ErrorBase } from './base';

export class UnauthorizedError extends ErrorBase {
  constructor({ message = 'Unauthorized' }: { message?: string } = {}) {
    super({ message, code: 401, type: 'unauthorized' });
  }
}
