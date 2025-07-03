import { CourseTranslationProps } from './props';

export class CourseTranslation {
  private readonly props: CourseTranslationProps;

  constructor(props: CourseTranslationProps) {
    this.props = props;
  }

  public get id(): string {
    return this.props.id;
  }

  public get course_id(): string {
    return this.props.course_id;
  }

  public get language_id(): string {
    return this.props.language_id;
  }

  public get title(): string {
    return this.props.title;
  }

  public get description(): string | null {
    return this.props.description;
  }

  public get manual_url(): string | null {
    return this.props.manual_url;
  }
}
