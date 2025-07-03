import { ErrorBase } from './base';

export class BadRequestError extends ErrorBase {
  constructor({ message = 'Bad request' }: { message?: string } = {}) {
    super({ message, code: 400, type: 'bad_request' });
  }
}
