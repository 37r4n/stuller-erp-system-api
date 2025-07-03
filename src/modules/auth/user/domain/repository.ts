import { User } from './entity';
import { UserFilter } from './props';

export interface UserRepository {
  first({ where }: { where?: UserFilter }): Promise<User | null>;
  get({ where }: { where?: UserFilter }): Promise<User[]>;
}
