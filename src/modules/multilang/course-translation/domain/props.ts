export interface CourseTranslationProps {
  id: string;
  course_id: string;
  language_id: string;
  title: string;
  description: string | null;
  manual_url: string | null;
}

export interface CourseTranslationFilter {
  id?: string;
  course_id?: string;
  language_id?: string;
  title?: string;
  description?: string | null;
  manual_url?: string | null;
}
