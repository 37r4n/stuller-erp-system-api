import { MessageRepository } from '../../../message';
import { BotRepository } from '../../domain/repository';

export class BotChatUsecase {
  private readonly botRepository: BotRepository;
  private readonly messageRepository: MessageRepository;

  constructor({
    botRepository,
    messageRepository,
  }: {
    botRepository: BotRepository;
    messageRepository: MessageRepository;
  }) {
    this.botRepository = botRepository;
    this.messageRepository = messageRepository;
  }

  public async execute({ user_id, content }: { user_id: string; content: string }) {}
}
