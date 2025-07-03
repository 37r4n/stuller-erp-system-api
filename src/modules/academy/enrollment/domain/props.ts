export interface EnrollmentProps {
  id: string;
  user_id: string;
  course_id: string;
}

export interface EnrollmentFilter {
  id?: string;
  user_id?: string;
  course_id?: string;
}
