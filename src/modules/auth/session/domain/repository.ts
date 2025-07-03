import { Session } from './entity';
import { SessionFilter } from './props';

export interface SessionRepository {
  first({ where }: { where: SessionFilter }): Promise<Session | null>;
  get({ where }: { where?: SessionFilter }): Promise<Session[]>;
  create({ entity }: { entity: Session }): Promise<void>;
  update({ entity, where }: { entity: Session; where: SessionFilter }): Promise<void>;
  delete({ where }: { where: SessionFilter }): Promise<void>;
}
