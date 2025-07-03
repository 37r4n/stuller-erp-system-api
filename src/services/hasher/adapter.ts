import bcrypt from 'bcrypt';
import { config } from '../../../config';
import { Hasher } from './service';

export class HasherAdapter implements Hasher {
  private readonly salt = config.auth.salt;

  public async hash({ raw }: { raw: string }): Promise<string> {
    return await bcrypt.hash(raw, this.salt);
  }

  public async compare({ raw, hash }: { raw: string; hash: string }): Promise<boolean> {
    return await bcrypt.compare(raw, hash);
  }
}
