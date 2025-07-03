export interface CourseProps {
  id: string;
  author_id: string;
  thumbnail_url: string | null;
  background_url: string | null;
}

export interface CourseFilter {
  id?: string;
  author_id?: string;
  thumbnail_url?: string | null;
  background_url?: string | null;
}
