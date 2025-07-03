import { Bot } from './entity';
import { BotFilter } from './props';

export interface BotRepository {
  first({ where }: { where: BotFilter }): Promise<Bot | null>;
  get({ where }: { where?: BotFilter }): Promise<Bot[]>;
  create({ entity }: { entity: Bot }): Promise<void>;
  update({ entity, where }: { entity: Bot; where: BotFilter }): Promise<void>;
  delete({ where }: { where: BotFilter }): Promise<void>;
}
