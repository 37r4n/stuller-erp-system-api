import { ProgressProps } from './props';

export class Progress {
  private readonly props: ProgressProps;

  constructor(props: ProgressProps) {
    this.props = props;
  }

  public get id(): string {
    return this.props.id;
  }

  public get user_id(): string {
    return this.props.user_id;
  }

  public get lesson_id(): string {
    return this.props.lesson_id;
  }
}
