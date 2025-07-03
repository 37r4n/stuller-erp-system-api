import { EnrollmentProps } from './props';

export class Enrollment {
  private readonly props: EnrollmentProps;

  constructor(props: EnrollmentProps) {
    this.props = props;
  }

  public get id(): string {
    return this.props.id;
  }

  public get user_id(): string {
    return this.props.user_id;
  }

  public get course_id(): string {
    return this.props.course_id;
  }
}
