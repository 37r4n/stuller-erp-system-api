import { ResultSetHeader, RowDataPacket } from 'mysql2';
import { database } from '../../../../../database';
import { Enrollment } from '../../domain/entity';
import { EnrollmentFilter } from '../../domain/props';
import { EnrollmentRepository } from '../../domain/repository';

export class EnrollmentAdapter implements EnrollmentRepository {
  private readonly columns = {
    id: 'id',
    user_id: 'user_id',
    course_id: 'course_id',
  } as const;

  private buildConditions(where: EnrollmentFilter): { clause: string; params: any[] } {
    const conditions: string[] = ['deleted_at IS NULL'];
    const params: any[] = [];

    for (const [key, column] of Object.entries(this.columns)) {
      const value = where[key as keyof EnrollmentFilter];
      if (value !== undefined) {
        if (value === null) {
          conditions.push(`${column} IS NULL`);
        } else {
          conditions.push(`${column} = ?`);
          params.push(value);
        }
      }
    }

    const clause = `WHERE ${conditions.join(' AND ')}`;
    return { clause, params };
  }

  public async first({ where }: { where: EnrollmentFilter }): Promise<Enrollment | null> {
    const { clause, params } = this.buildConditions(where);

    const [rows] = await database.execute<RowDataPacket[]>(
      `SELECT id, user_id, course_id FROM academy_enrollments ${clause} LIMIT 1`,
      params,
    );

    if (!rows?.length) return null;

    const row = rows[0];
    return new Enrollment({
      id: row.id,
      user_id: row.user_id,
      course_id: row.course_id,
    });
  }

  public async get({ where = {} }: { where?: EnrollmentFilter }): Promise<Enrollment[]> {
    const { clause, params } = this.buildConditions(where);

    const [rows] = await database.execute<RowDataPacket[]>(
      `SELECT id, user_id, course_id FROM academy_enrollments ${clause}`,
      params,
    );

    return rows.map(
      (row) =>
        new Enrollment({
          id: row.id,
          user_id: row.user_id,
          course_id: row.course_id,
        }),
    );
  }

  public async create({ entity }: { entity: Enrollment }): Promise<void> {
    await database.execute<ResultSetHeader>(
      `INSERT INTO academy_enrollments (id, user_id, course_id)
       VALUES (?, ?, ?)`,
      [entity.id, entity.user_id, entity.course_id],
    );
  }

  public async update({ entity, where }: { entity: Enrollment; where: EnrollmentFilter }): Promise<void> {
    const fields = ['user_id = ?', 'course_id = ?'];
    const values = [entity.user_id, entity.course_id];
    const { clause, params } = this.buildConditions(where);

    await database.execute<ResultSetHeader>(`UPDATE academy_enrollments SET ${fields.join(', ')} ${clause}`, [
      ...values,
      ...params,
    ]);
  }

  public async delete({ where }: { where: EnrollmentFilter }): Promise<void> {
    const { clause, params } = this.buildConditions(where);
    await database.execute<ResultSetHeader>(`UPDATE academy_enrollments SET deleted_at = NOW() ${clause}`, params);
  }
}
