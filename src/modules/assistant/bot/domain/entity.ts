import { BotProps } from './props';

export class Bot {
  private readonly props: BotProps;

  constructor(props: BotProps) {
    this.props = props;
  }

  public get id(): string {
    return this.props.id;
  }

  public get name(): string {
    return this.props.name;
  }

  public get role(): string {
    return this.props.role;
  }

  public get task(): string {
    return this.props.task;
  }

  public get avatar_url(): string | null {
    return this.props.avatar_url;
  }

  public get skills(): {
    id: string;
    name: string;
    descripion: string;
    parameters: {
      name: string;
      type: string;
      description: string;
    }[];
  }[] {
    return this.props.skills;
  }
}
