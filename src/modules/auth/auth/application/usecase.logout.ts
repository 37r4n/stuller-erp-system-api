import { UnauthorizedError } from '../../../../errors';
import { Hasher } from '../../../../services';
import { SessionRepository } from '../../session';

export class AuthLogoutUsecase {
  private readonly sessionRepository: SessionRepository;
  private readonly hasher: Hasher;

  constructor({ sessionRepository, hasher }: { sessionRepository: SessionRepository; hasher: Hasher }) {
    this.sessionRepository = sessionRepository;
    this.hasher = hasher;
  }

  public async execute({ user_id, access_token }: { user_id: string; access_token: string }) {
    // get constants
    const now = new Date();

    // get sessions
    const sessions = await this.sessionRepository.get({ where: { user_id, revoked_at: null } });

    for (const session of sessions) {
      const is_matched = await this.hasher.compare({ raw: access_token, hash: session.access_token });

      // validate if sesion is match
      if (is_matched) {
        const access_token_expires_at = session.access_token_expires_at;
        const revoked_at = session.revoked_at;
        if (access_token_expires_at <= now) throw new UnauthorizedError({ message: 'Invalid token.' });
        if (revoked_at != null) throw new UnauthorizedError({ message: 'Invalid token.' });

        // revoke sessions
        for (const s of sessions) {
          s.revoke();
          await this.sessionRepository.update({ where: { id: s.id }, entity: s });
        }

        return;
      }
    }

    throw new UnauthorizedError({ message: 'Invalid token.' });
  }
}
