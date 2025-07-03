import { LanguageProps } from './props';

export class Language {
  private readonly props: LanguageProps;

  constructor(props: LanguageProps) {
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

  public get native_name(): string {
    return this.props.native_name;
  }
}
