import { NotFoundError, UnauthorizedError } from '../../../../errors';
import { Hasher } from '../../../../services';
import { SessionRepository } from '../../session';
import { UserRepository } from '../../user';

export class AuthValidateUsecase {
  private readonly sessionRepository: SessionRepository;
  private readonly userRepository: UserRepository;
  private readonly hasher: Hasher;

  constructor({
    sessionRepository,
    userRepository,
    hasher,
  }: {
    sessionRepository: SessionRepository;
    userRepository: UserRepository;
    hasher: Hasher;
  }) {
    this.sessionRepository = sessionRepository;
    this.userRepository = userRepository;
    this.hasher = hasher;
  }

  public async execute({ access_token }: { access_token: string }) {
    // get constants
    const now = new Date();

    // get sesions
    const sessions = await this.sessionRepository.get({ where: { revoked_at: null } });

    for (const session of sessions) {
      const is_matched = await this.hasher.compare({ raw: access_token, hash: session.access_token });

      // validate if sesion is match
      if (is_matched) {
        const access_token_expires_at = session.access_token_expires_at;
        const revoked_at = session.revoked_at;

        if (access_token_expires_at <= now) throw new UnauthorizedError({ message: 'Invalid token.' });
        if (revoked_at != null) throw new UnauthorizedError({ message: 'Invalid token.' });

        // const find user
        const user = await this.userRepository.first({ where: { id: session.user_id, is_active: true } });
        if (!user) throw new NotFoundError({ message: 'User could not be found' });

        // return response
        return {
          id: user.id,
          code: user.code,
          name: user.name,
          avatar_url: user.avatar_url,
          roles: user.roles,
        };
      }
    }

    throw new UnauthorizedError({ message: 'Invalid token.' });
  }
}
