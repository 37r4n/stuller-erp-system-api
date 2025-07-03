import { Language } from './entity';
import { LanguageFilter } from './props';

export interface LanguageRepository {
  first({ where }: { where: LanguageFilter }): Promise<Language | null>;
}
