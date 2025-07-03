import { SectionProps } from './props';

export class Section {
  private readonly props: SectionProps;

  constructor(props: SectionProps) {
    this.props = props;
  }

  public get id(): string {
    return this.props.id;
  }

  public get course_id(): string {
    return this.props.course_id;
  }

  public get display_order(): number {
    return this.props.display_order;
  }

  public get thumbnail_url(): string | null {
    return this.props.thumbnail_url;
  }

  public get background_url(): string | null {
    return this.props.background_url;
  }
}
