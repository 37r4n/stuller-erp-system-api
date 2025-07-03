import { CourseTranslation } from './entity';
import { CourseTranslationFilter } from './props';

export interface CourseTranslationRepository {
  first({ where }: { where: CourseTranslationFilter }): Promise<CourseTranslation | null>;
  get({ where }: { where?: CourseTranslationFilter }): Promise<CourseTranslation[]>;
  create({ entity }: { entity: CourseTranslation }): Promise<void>;
  update({ entity, where }: { entity: CourseTranslation; where: CourseTranslationFilter }): Promise<void>;
  delete({ where }: { where: CourseTranslationFilter }): Promise<void>;
}
