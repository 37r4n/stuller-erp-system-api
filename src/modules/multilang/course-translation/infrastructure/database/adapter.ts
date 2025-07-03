import { RowDataPacket, ResultSetHeader } from 'mysql2';
import { database } from '../../../../../database';
import { CourseTranslation } from '../../domain/entity';
import { CourseTranslationFilter } from '../../domain/props';
import { CourseTranslationRepository } from '../../domain/repository';

export class CourseTranslationAdapter implements CourseTranslationRepository {
  private readonly columns = {
    id: 'id',
    course_id: 'course_id',
    language_id: 'language_id',
    title: 'title',
    description: 'description',
    manual_url: 'manual_url',
  } as const;

  private buildConditions(where: CourseTranslationFilter): { clause: string; params: any[] } {
    const conditions: string[] = ['deleted_at IS NULL'];
    const params: any[] = [];

    for (const [key, column] of Object.entries(this.columns)) {
      const value = where[key as keyof CourseTranslationFilter];
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

  private toEntity(row: RowDataPacket): CourseTranslation {
    return new CourseTranslation({
      id: row.id,
      course_id: row.course_id,
      language_id: row.language_id,
      title: row.title,
      description: row.description,
      manual_url: row.manual_url,
    });
  }

  public async first({ where }: { where: CourseTranslationFilter }): Promise<CourseTranslation | null> {
    const { clause, params } = this.buildConditions(where);

    const [rows] = await database.execute<RowDataPacket[]>(
      `SELECT id, course_id, language_id, title, description, manual_url 
       FROM multilang_academy_courses ${clause} LIMIT 1`,
      params,
    );

    if (!rows?.length) return null;

    return this.toEntity(rows[0]);
  }

  public async get({ where = {} }: { where?: CourseTranslationFilter }): Promise<CourseTranslation[]> {
    const { clause, params } = this.buildConditions(where);

    const [rows] = await database.execute<RowDataPacket[]>(
      `SELECT id, course_id, language_id, title, description, manual_url 
       FROM multilang_academy_courses ${clause}`,
      params,
    );

    return rows.map(this.toEntity);
  }

  public async create({ entity }: { entity: CourseTranslation }): Promise<void> {
    await database.execute<ResultSetHeader>(
      `INSERT INTO multilang_academy_courses 
        (id, course_id, language_id, title, description, manual_url) 
       VALUES (?, ?, ?, ?, ?, ?)`,
      [entity.id, entity.course_id, entity.language_id, entity.title, entity.description, entity.manual_url],
    );
  }

  public async update({ entity, where }: { entity: CourseTranslation; where: CourseTranslationFilter }): Promise<void> {
    const { clause, params } = this.buildConditions(where);

    const values = [entity.course_id, entity.language_id, entity.title, entity.description, entity.manual_url];

    const updateFields = `
      course_id = ?, 
      language_id = ?, 
      title = ?, 
      description = ?, 
      manual_url = ?
    `;

    await database.execute<ResultSetHeader>(`UPDATE multilang_academy_courses SET ${updateFields} ${clause}`, [
      ...values,
      ...params,
    ]);
  }

  public async delete({ where }: { where: CourseTranslationFilter }): Promise<void> {
    const { clause, params } = this.buildConditions(where);

    await database.execute<ResultSetHeader>(
      `UPDATE multilang_academy_courses SET deleted_at = NOW() ${clause}`,
      params,
    );
  }
}
