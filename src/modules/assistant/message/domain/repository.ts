import { Message } from './entity';
import { MessageFilter } from './props';

export interface MessageRepository {
  first({ where }: { where: MessageFilter }): Promise<Message | null>;
  get({ where }: { where?: MessageFilter }): Promise<Message[]>;
  create({ entity }: { entity: Message }): Promise<void>;
  update({ entity, where }: { entity: Message; where: MessageFilter }): Promise<void>;
  delete({ where }: { where: MessageFilter }): Promise<void>;
}
