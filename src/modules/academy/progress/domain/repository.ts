import { Progress } from './entity';
import { ProgressFilter } from './props';

export interface ProgressRepository {
  first({ where }: { where: ProgressFilter }): Promise<Progress | null>;
  get({ where }: { where?: ProgressFilter }): Promise<Progress[]>;
  create({ entity }: { entity: Progress }): Promise<void>;
  update({ entity, where }: { entity: Progress; where: ProgressFilter }): Promise<void>;
  delete({ where }: { where: ProgressFilter }): Promise<void>;
}
