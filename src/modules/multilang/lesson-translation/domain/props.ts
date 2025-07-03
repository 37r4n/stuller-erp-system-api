export interface LessonTranslationProps {
  id: string;
  lesson_id: string;
  language_id: string;
  title: string;
  description: string | null;
  resource_url: string;
}

export interface LessonTranslationFilter {
  id?: string;
  lesson_id?: string;
  language_id?: string;
  title?: string;
  description?: string | null;
  resource_url?: string;
}
