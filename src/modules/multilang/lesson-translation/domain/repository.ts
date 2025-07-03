import { LessonTranslation } from './entity';
import { LessonTranslationFilter } from './props';

export interface LessonTranslationRepository {
  first({ where }: { where: LessonTranslationFilter }): Promise<LessonTranslation | null>;
  get({ where }: { where: LessonTranslationFilter }): Promise<LessonTranslation[]>;
  create({ entity }: { entity: LessonTranslation }): Promise<void>;
  update({ entity, where }: { entity: LessonTranslation; where: LessonTranslationFilter }): Promise<void>;
  delete({ where }: { where: LessonTranslationFilter }): Promise<void>;
}
