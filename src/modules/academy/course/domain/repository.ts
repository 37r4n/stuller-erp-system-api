import { Course } from './entity';
import { CourseFilter } from './props';

export interface CourseRepository {
  first({ where }: { where: CourseFilter }): Promise<Course | null>;
  get({ where }: { where?: CourseFilter }): Promise<Course[]>;
  create({ entity }: { entity: Course }): Promise<void>;
  update({ entity, where }: { entity: Course; where: CourseFilter }): Promise<void>;
  delete({ where }: { where: CourseFilter }): Promise<void>;
}
