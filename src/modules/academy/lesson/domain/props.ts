export interface LessonProps {
  id: string;
  section_id: string;
  display_order: number;
  duration_seconds: number;
  thumbnail_url: string | null;
  background_url: string | null;
}

export interface LessonFilter {
  id?: string;
  section_id?: string;
  display_order?: number;
  duration_seconds?: number;
  thumbnail_url?: string | null;
  background_url?: string | null;
}
