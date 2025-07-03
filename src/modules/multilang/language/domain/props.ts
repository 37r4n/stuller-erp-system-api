export interface LanguageProps {
  id: string;
  code: string;
  name: string;
  native_name: string;
}

export interface LanguageFilter {
  id?: string;
  code?: string;
  name?: string;
  native_name?: string;
}
