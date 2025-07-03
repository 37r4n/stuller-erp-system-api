import { SectionTranslationProps } from './props';

export class SectionTranslation {
  private readonly props: SectionTranslationProps;

  constructor(props: SectionTranslationProps) {
    this.props = props;
  }

  public get id(): string {
    return this.props.id;
  }

  public get section_id(): string {
    return this.props.section_id;
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
}
