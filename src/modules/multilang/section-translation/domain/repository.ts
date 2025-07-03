import { SectionTranslation } from './entity';
import { SectionTranslationFilter } from './props';

export interface SectionTranslationRepository {
  first({ where }: { where: SectionTranslationFilter }): Promise<SectionTranslation | null>;
  get({ where }: { where: SectionTranslationFilter }): Promise<SectionTranslation[]>;
  create({ entity }: { entity: SectionTranslation }): Promise<void>;
  update({ entity, where }: { entity: SectionTranslation; where: SectionTranslationFilter }): Promise<void>;
  delete({ where }: { where: SectionTranslationFilter }): Promise<void>;
}
