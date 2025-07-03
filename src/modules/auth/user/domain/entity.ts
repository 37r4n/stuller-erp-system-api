import { RoleProps } from '../../role';
import { UserProps } from './props';

export class User {
  private readonly props: UserProps;

  constructor(props: UserProps) {
    this.props = props;
  }

  public get id(): string {
    return this.props.id;
  }

  public get code(): string {
    return this.props.code;
  }

  public get name(): string {
    return this.props.name;
  }

  public get is_active(): boolean {
    return this.props.is_active;
  }

  public get avatar_url(): string | null {
    return this.props.avatar_url;
  }

  public get roles(): RoleProps[] {
    return this.props.roles;
  }
}
