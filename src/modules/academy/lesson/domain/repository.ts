import { Lesson } from './entity';
import { LessonFilter } from './props';

export interface LessonRepository {
  first({ where }: { where: LessonFilter }): Promise<Lesson | null>;
  get({ where }: { where: LessonFilter }): Promise<Lesson[]>;
  create({ entity }: { entity: Lesson }): Promise<void>;
  update({ entity, where }: { entity: Lesson; where: LessonFilter }): Promise<void>;
  delete({ where }: { where: LessonFilter }): Promise<void>;
}
