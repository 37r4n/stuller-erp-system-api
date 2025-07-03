import { MessageProps } from './props';

export class Message {
  private readonly props: MessageProps;

  constructor(props: MessageProps) {
    this.props = props;
  }

  public get id(): string {
    return this.props.id;
  }

  public get bot_id(): string {
    return this.props.bot_id;
  }

  public get user_id(): string {
    return this.props.user_id;
  }

  public get skill_id(): string | null {
    return this.props.skill_id;
  }

  public get type(): string {
    return this.props.type;
  }

  public get content(): string | null {
    return this.props.content;
  }

  public get skill_parameters(): string {
    return this.props.type;
  }

  public get timestamp(): Date {
    return this.props.timestamp;
  }
}
