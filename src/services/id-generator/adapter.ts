import { randomUUID } from 'crypto';
import { IdGenerator } from './service';

export class IdGeneratorAdapter implements IdGenerator {
  public async generate(): Promise<string> {
    return randomUUID();
  }
}
