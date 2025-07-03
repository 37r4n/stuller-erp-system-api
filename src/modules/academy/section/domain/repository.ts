import { Section } from './entity';
import { SectionFilter } from './props';

export interface SectionRepository {
  first({ where }: { where: SectionFilter }): Promise<Section | null>;
  get({ where }: { where: SectionFilter }): Promise<Section[]>;
  create({ entity }: { entity: Section }): Promise<void>;
  update({ entity, where }: { entity: Section; where: SectionFilter }): Promise<void>;
  delete({ where }: { where: SectionFilter }): Promise<void>;
}
