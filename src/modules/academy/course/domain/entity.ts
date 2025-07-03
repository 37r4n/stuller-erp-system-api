import { CourseProps } from './props';

export class Course {
  private readonly props: CourseProps;

  constructor(props: CourseProps) {
    this.props = props;
  }

  public get id(): string {
    return this.props.id;
  }

  public get author_id(): string {
    return this.props.author_id;
  }

  public get thumbnail_url(): string | null {
    return this.props.thumbnail_url;
  }

  public get background_url(): string | null {
    return this.props.background_url;
  }
}
