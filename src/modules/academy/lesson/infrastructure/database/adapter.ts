import { RowDataPacket, ResultSetHeader } from 'mysql2';
import { database } from '../../../../../database';
import { Lesson } from '../../domain/entity';
import { LessonFilter } from '../../domain/props';
import { LessonRepository } from '../../domain/repository';

export class LessonAdapter implements LessonRepository {
  private readonly columns = {
    id: 'id',
    section_id: 'section_id',
    display_order: 'display_order',
    duration_seconds: 'duration_seconds',
    thumbnail_url: 'thumbnail_url',
    background_url: 'background_url',
  } as const;

  private buildConditions(where: LessonFilter): { clause: string; params: any[] } {
    const conditions: string[] = ['deleted_at IS NULL'];
    const params: any[] = [];

    for (const [key, column] of Object.entries(this.columns)) {
      const value = where[key as keyof LessonFilter];
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

  private toEntity(row: RowDataPacket): Lesson {
    return new Lesson({
      id: row.id,
      section_id: row.section_id,
      display_order: row.display_order,
      duration_seconds: row.duration_seconds,
      thumbnail_url: row.thumbnail_url,
      background_url: row.background_url,
    });
  }

  public async first({ where }: { where: LessonFilter }): Promise<Lesson | null> {
    const { clause, params } = this.buildConditions(where);

    const [rows] = await database.execute<RowDataPacket[]>(
      `SELECT id, section_id, display_order, duration_seconds, thumbnail_url, background_url 
       FROM academy_lessons ${clause} LIMIT 1`,
      params,
    );

    if (!rows?.length) return null;

    return this.toEntity(rows[0]);
  }

  public async get({ where }: { where: LessonFilter }): Promise<Lesson[]> {
    const { clause, params } = this.buildConditions(where);

    const [rows] = await database.execute<RowDataPacket[]>(
      `SELECT id, section_id, display_order, duration_seconds, thumbnail_url, background_url 
       FROM academy_lessons ${clause}`,
      params,
    );

    return rows.map(this.toEntity);
  }

  public async create({ entity }: { entity: Lesson }): Promise<void> {
    await database.execute<ResultSetHeader>(
      `INSERT INTO academy_lessons 
        (id, section_id, display_order, duration_seconds, thumbnail_url, background_url) 
       VALUES (?, ?, ?, ?, ?, ?)`,
      [
        entity.id,
        entity.section_id,
        entity.display_order,
        entity.duration_seconds,
        entity.thumbnail_url,
        entity.background_url,
      ],
    );
  }

  public async update({ entity, where }: { entity: Lesson; where: LessonFilter }): Promise<void> {
    const { clause, params } = this.buildConditions(where);

    const values = [
      entity.section_id,
      entity.display_order,
      entity.duration_seconds,
      entity.thumbnail_url,
      entity.background_url,
    ];

    const updateFields = `
      section_id = ?, 
      display_order = ?, 
      duration_seconds = ?, 
      thumbnail_url = ?, 
      background_url = ?
    `;

    await database.execute<ResultSetHeader>(`UPDATE academy_lessons SET ${updateFields} ${clause}`, [
      ...values,
      ...params,
    ]);
  }

  public async delete({ where }: { where: LessonFilter }): Promise<void> {
    const { clause, params } = this.buildConditions(where);

    await database.execute<ResultSetHeader>(`UPDATE academy_lessons SET deleted_at = NOW() ${clause}`, params);
  }
}
