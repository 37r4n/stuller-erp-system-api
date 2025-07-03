import { LessonProps } from './props';

export class Lesson {
  private readonly props: LessonProps;

  constructor(props: LessonProps) {
    this.props = props;
  }

  public get id(): string {
    return this.props.id;
  }

  public get section_id(): string {
    return this.props.section_id;
  }

  public get display_order(): number {
    return this.props.display_order;
  }

  public get duration_seconds(): number {
    return this.props.duration_seconds;
  }

  public get thumbnail_url(): string | null {
    return this.props.thumbnail_url;
  }

  public get background_url(): string | null {
    return this.props.background_url;
  }
}
