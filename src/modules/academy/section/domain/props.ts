export interface SectionProps {
  id: string;
  course_id: string;
  display_order: number;
  thumbnail_url: string | null;
  background_url: string | null;
}

export interface SectionFilter {
  id?: string;
  course_id?: string;
  display_order?: number;
  thumbnail_url?: string | null;
  background_url?: string | null;
}
