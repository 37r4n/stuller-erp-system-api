import { config } from '../../../../../config';
import { NotFoundError } from '../../../../errors';
import { Hasher, IdGenerator, TokenGenerator } from '../../../../services';
import { Session, SessionRepository } from '../../session';
import { UserRepository } from '../../user';

export class AuthLoginUsecase {
  private readonly sessionRepository: SessionRepository;
  private readonly userRepository: UserRepository;
  private readonly tokenGenerator: TokenGenerator;
  private readonly idGenerator: IdGenerator;
  private readonly hasher: Hasher;

  constructor({
    sessionRepository,
    userRepository,
    tokenGenerator,
    idGenerator,
    hasher,
  }: {
    sessionRepository: SessionRepository;
    userRepository: UserRepository;
    tokenGenerator: TokenGenerator;
    idGenerator: IdGenerator;
    hasher: Hasher;
  }) {
    this.sessionRepository = sessionRepository;
    this.userRepository = userRepository;
    this.tokenGenerator = tokenGenerator;
    this.idGenerator = idGenerator;
    this.hasher = hasher;
  }

  public async execute({ code }: { code: string }) {
    // verify if users exists
    const user = await this.userRepository.first({ where: { code, is_active: true } });
    if (!user) throw new NotFoundError({ message: 'User could not be found.' });

    // create new session
    const now = new Date();
    const access_token = await this.tokenGenerator.generate();
    const refresh_token = await this.tokenGenerator.generate();
    const access_token_expires_at = new Date(now.getTime() + config.auth.access_token_ttl * 1000);
    const refresh_token_expires_at = new Date(now.getTime() + config.auth.refresh_token_ttl * 1000);
    const access_token_hash = await this.hasher.hash({ raw: access_token });
    const refresh_token_hash = await this.hasher.hash({ raw: refresh_token });

    // create session
    const session = new Session({
      id: await this.idGenerator.generate(),
      user_id: user.id,
      access_token: access_token_hash,
      refresh_token: refresh_token_hash,
      access_token_expires_at,
      refresh_token_expires_at,
      revoked_at: null,
    });

    // save changes
    await this.sessionRepository.create({ entity: session });

    // return response
    return {
      access_token,
      refresh_token,
      user: {
        id: user.id,
        code: user.code,
        name: user.name,
        avatar_url: user.avatar_url,
        roles: user.roles,
      },
    };
  }
}
