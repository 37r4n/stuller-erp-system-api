import { ErrorBase } from './base';

export class NotFoundError extends ErrorBase {
  constructor({ message = 'Not found' }: { message?: string } = {}) {
    super({ message, code: 404, type: 'not_found' });
  }
}
