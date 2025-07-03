import { ErrorBase } from './base';

export class InvalidError extends ErrorBase {
  constructor({ message = 'Invalid' }: { message?: string } = {}) {
    super({ message, code: 400, type: 'invalid' });
  }
}
