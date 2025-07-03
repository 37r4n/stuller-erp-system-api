import { randomUUID } from 'crypto';
import { TokenGenerator } from './service';

export class TokenGeneratorAdapter implements TokenGenerator {
  public async generate(): Promise<string> {
    return randomUUID();
  }
}
