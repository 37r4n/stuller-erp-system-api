export interface SectionTranslationProps {
  id: string;
  section_id: string;
  language_id: string;
  title: string;
  description: string | null;
}

export interface SectionTranslationFilter {
  id?: string;
  section_id?: string;
  language_id?: string;
  title?: string;
  description?: string | null;
}
