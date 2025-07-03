import { LessonTranslationProps } from './props';

export class LessonTranslation {
  private readonly props: LessonTranslationProps;

  constructor(props: LessonTranslationProps) {
    this.props = props;
  }

  public get id(): string {
    return this.props.id;
  }

  public get lesson_id(): string {
    return this.props.lesson_id;
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

  public get resource_url(): string {
    return this.props.resource_url;
  }
}
