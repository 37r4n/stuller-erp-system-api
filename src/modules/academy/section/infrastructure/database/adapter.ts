import { RowDataPacket, ResultSetHeader } from 'mysql2';
import { database } from '../../../../../database';
import { Section } from '../../domain/entity';
import { SectionFilter } from '../../domain/props';
import { SectionRepository } from '../../domain/repository';

export class SectionAdapter implements SectionRepository {
  private readonly columns = {
    id: 'id',
    course_id: 'course_id',
    display_order: 'display_order',
    thumbnail_url: 'thumbnail_url',
    background_url: 'background_url',
  } as const;

  private buildConditions(where: SectionFilter): { clause: string; params: any[] } {
    const conditions: string[] = ['deleted_at IS NULL'];
    const params: any[] = [];

    for (const [key, column] of Object.entries(this.columns)) {
      const value = where[key as keyof SectionFilter];
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

  private toEntity(row: RowDataPacket): Section {
    return new Section({
      id: row.id,
      course_id: row.course_id,
      display_order: row.display_order,
      thumbnail_url: row.thumbnail_url,
      background_url: row.background_url,
    });
  }

  public async first({ where }: { where: SectionFilter }): Promise<Section | null> {
    const { clause, params } = this.buildConditions(where);

    const [rows] = await database.execute<RowDataPacket[]>(
      `SELECT id, course_id, display_order, thumbnail_url, background_url 
       FROM academy_sections ${clause} LIMIT 1`,
      params,
    );

    if (!rows?.length) return null;

    return this.toEntity(rows[0]);
  }

  public async get({ where }: { where: SectionFilter }): Promise<Section[]> {
    const { clause, params } = this.buildConditions(where);

    const [rows] = await database.execute<RowDataPacket[]>(
      `SELECT id, course_id, display_order, thumbnail_url, background_url 
       FROM academy_sections ${clause}`,
      params,
    );

    return rows.map(this.toEntity);
  }

  public async create({ entity }: { entity: Section }): Promise<void> {
    await database.execute<ResultSetHeader>(
      `INSERT INTO academy_sections 
        (id, course_id, display_order, thumbnail_url, background_url) 
       VALUES (?, ?, ?, ?, ?)`,
      [entity.id, entity.course_id, entity.display_order, entity.thumbnail_url, entity.background_url],
    );
  }

  public async update({ entity, where }: { entity: Section; where: SectionFilter }): Promise<void> {
    const { clause, params } = this.buildConditions(where);

    const values = [entity.course_id, entity.display_order, entity.thumbnail_url, entity.background_url];

    const updateFields = `
      course_id = ?, 
      display_order = ?, 
      thumbnail_url = ?, 
      background_url = ?
    `;

    await database.execute<ResultSetHeader>(`UPDATE academy_sections SET ${updateFields} ${clause}`, [
      ...values,
      ...params,
    ]);
  }

  public async delete({ where }: { where: SectionFilter }): Promise<void> {
    const { clause, params } = this.buildConditions(where);

    await database.execute<ResultSetHeader>(`UPDATE academy_sections SET deleted_at = NOW() ${clause}`, params);
  }
}
