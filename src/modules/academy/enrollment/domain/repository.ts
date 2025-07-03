import { Enrollment } from './entity';
import { EnrollmentFilter } from './props';

export interface EnrollmentRepository {
  first({ where }: { where: EnrollmentFilter }): Promise<Enrollment | null>;
  get({ where }: { where: EnrollmentFilter }): Promise<Enrollment[]>;
  create({ entity }: { entity: Enrollment }): Promise<void>;
  update({ entity, where }: { entity: Enrollment; where: EnrollmentFilter }): Promise<void>;
  delete({ where }: { where: EnrollmentFilter }): Promise<void>;
}
