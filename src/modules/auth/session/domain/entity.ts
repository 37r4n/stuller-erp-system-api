import { SessionProps } from './props';

export class Session {
  private readonly props: SessionProps;

  constructor(props: SessionProps) {
    this.props = props;
  }

  public get id(): string {
    return this.props.id;
  }

  public get user_id(): string {
    return this.props.user_id;
  }

  public get access_token(): string {
    return this.props.access_token;
  }

  public get refresh_token(): string {
    return this.props.refresh_token;
  }

  public get access_token_expires_at(): Date {
    return this.props.access_token_expires_at;
  }

  public get refresh_token_expires_at(): Date {
    return this.props.refresh_token_expires_at;
  }

  public get revoked_at(): Date | null {
    return this.props.revoked_at;
  }

  public revoke(): void {
    const now = new Date();
    this.props.revoked_at = now;
  }
}
