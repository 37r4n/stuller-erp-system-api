import { config } from '../../../../../config';
import { NotFoundError, UnauthorizedError } from '../../../../errors';
import { Hasher, IdGenerator, TokenGenerator } from '../../../../services';
import { Session, SessionRepository } from '../../session';
import { UserRepository } from '../../user';

export class AuthRefreshUsecase {
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

  public async execute({ user_id, refresh_token }: { user_id: string; refresh_token: string }) {
    // get constants
    const now = new Date();

    // get sesions
    const sessions = await this.sessionRepository.get({ where: { user_id, revoked_at: null } });

    // validate if user exists
    const user = await this.userRepository.first({ where: { id: user_id, is_active: true } });
    if (!user) throw new NotFoundError({ message: 'User could not be found' });

    // validate if sesion is match
    for (const session of sessions) {
      const is_refresh_token_matched = await this.hasher.compare({ raw: refresh_token, hash: session.refresh_token });

      if (is_refresh_token_matched) {
        const refresh_token_expires_at = session.refresh_token_expires_at;
        const revoked_at = session.revoked_at;

        if (refresh_token_expires_at <= now) throw new UnauthorizedError({ message: 'Invalid token.' });
        if (revoked_at != null) throw new UnauthorizedError({ message: 'Invalid token.' });

        // revoke sessions
        for (const s of sessions) {
          s.revoke();
          await this.sessionRepository.update({ where: { id: s.id }, entity: s });
        }

        const new_access_token = await this.tokenGenerator.generate();
        const new_refresh_token = await this.tokenGenerator.generate();
        const new_access_token_expires_at = new Date(now.getTime() + config.auth.access_token_ttl * 1000);
        const new_refresh_token_expires_at = new Date(now.getTime() + config.auth.refresh_token_ttl * 1000);
        const new_access_token_hash = await this.hasher.hash({ raw: new_access_token });
        const new_refresh_token_hash = await this.hasher.hash({ raw: new_refresh_token });

        const new_session = new Session({
          id: await this.idGenerator.generate(),
          user_id,
          access_token: new_access_token_hash,
          refresh_token: new_refresh_token_hash,
          access_token_expires_at: new_access_token_expires_at,
          refresh_token_expires_at: new_refresh_token_expires_at,
          revoked_at: null,
        });

        // save changes
        await this.sessionRepository.create({ entity: new_session });

        // return response
        return {
          access_token: new_access_token,
          refresh_token: new_refresh_token,
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

    throw new UnauthorizedError({ message: 'Invalid token.' });
  }
}
