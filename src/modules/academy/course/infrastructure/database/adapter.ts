import { ResultSetHeader, RowDataPacket } from 'mysql2';
import { database } from '../../../../../database';
import { Course } from '../../domain/entity';
import { CourseFilter } from '../../domain/props';
import { CourseRepository } from '../../domain/repository';

export class CourseAdapter implements CourseRepository {
  private readonly columns = {
    id: 'id',
    author_id: 'author_id',
    thumbnail_url: 'thumbnail_url',
    background_url: 'background_url',
  } as const;

  private buildConditions(where: CourseFilter): { clause: string; params: any[] } {
    const conditions: string[] = ['deleted_at IS NULL'];
    const params: any[] = [];

    for (const [key, column] of Object.entries(this.columns)) {
      const value = where[key as keyof CourseFilter];
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

  public async first({ where }: { where: CourseFilter }): Promise<Course | null> {
    const { clause, params } = this.buildConditions(where);

    const [rows] = await database.execute<RowDataPacket[]>(
      `SELECT 
        id, 
        author_id, 
        thumbnail_url, 
        background_url 
      FROM academy_courses ${clause} LIMIT 1`,
      params,
    );

    if (!rows?.length) return null;
    const row = rows[0];

    return new Course({
      id: row.id,
      author_id: row.author_id,
      thumbnail_url: row.thumbnail_url,
      background_url: row.background_url,
    });
  }

  public async get({ where = {} }: { where?: CourseFilter }): Promise<Course[]> {
    const { clause, params } = this.buildConditions(where);

    const [rows] = await database.execute<RowDataPacket[]>(
      `SELECT 
        id, 
        author_id, 
        thumbnail_url, 
        background_url 
      FROM academy_courses ${clause}`,
      params,
    );

    return rows.map(
      (row) =>
        new Course({
          id: row.id,
          author_id: row.author_id,
          thumbnail_url: row.thumbnail_url,
          background_url: row.background_url,
        }),
    );
  }

  public async create({ entity }: { entity: Course }): Promise<void> {
    await database.execute<ResultSetHeader>(
      `INSERT INTO academy_courses (id, author_id, thumbnail_url, background_url)
       VALUES (?, ?, ?, ?)`,
      [entity.id, entity.author_id, entity.thumbnail_url, entity.background_url],
    );
  }

  public async update({ entity, where }: { entity: Course; where: CourseFilter }): Promise<void> {
    const fields = ['author_id = ?', 'thumbnail_url = ?', 'background_url = ?'];
    const values = [entity.author_id, entity.thumbnail_url, entity.background_url];
    const { clause, params } = this.buildConditions(where);
    await database.execute<ResultSetHeader>(`UPDATE academy_courses SET ${fields.join(', ')} ${clause}`, [
      ...values,
      ...params,
    ]);
  }

  public async delete({ where }: { where: CourseFilter }): Promise<void> {
    const { clause, params } = this.buildConditions(where);
    await database.execute<ResultSetHeader>(`UPDATE academy_courses SET deleted_at = NOW() ${clause}`, params);
  }
}
