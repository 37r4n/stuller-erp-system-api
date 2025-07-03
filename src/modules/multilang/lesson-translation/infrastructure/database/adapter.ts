import { RowDataPacket, ResultSetHeader } from 'mysql2';
import { database } from '../../../../../database';
import { LessonTranslation } from '../../domain/entity';
import { LessonTranslationFilter } from '../../domain/props';
import { LessonTranslationRepository } from '../../domain/repository';

export class LessonTranslationAdapter implements LessonTranslationRepository {
  private readonly columns = {
    id: 'id',
    lesson_id: 'lesson_id',
    language_id: 'language_id',
    title: 'title',
    description: 'description',
    resource_url: 'resource_url',
  } as const;

  private buildConditions(where: LessonTranslationFilter): { clause: string; params: any[] } {
    const conditions: string[] = ['deleted_at IS NULL'];
    const params: any[] = [];

    for (const [key, column] of Object.entries(this.columns)) {
      const value = where[key as keyof LessonTranslationFilter];
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

  private toEntity(row: RowDataPacket): LessonTranslation {
    return new LessonTranslation({
      id: row.id,
      lesson_id: row.lesson_id,
      language_id: row.language_id,
      title: row.title,
      description: row.description,
      resource_url: row.resource_url,
    });
  }

  public async first({ where }: { where: LessonTranslationFilter }): Promise<LessonTranslation | null> {
    const { clause, params } = this.buildConditions(where);

    const [rows] = await database.execute<RowDataPacket[]>(
      `SELECT id, lesson_id, language_id, title, description, resource_url 
       FROM multilang_academy_lessons ${clause} LIMIT 1`,
      params,
    );

    if (!rows?.length) return null;

    return this.toEntity(rows[0]);
  }

  public async get({ where }: { where: LessonTranslationFilter }): Promise<LessonTranslation[]> {
    const { clause, params } = this.buildConditions(where);

    const [rows] = await database.execute<RowDataPacket[]>(
      `SELECT id, lesson_id, language_id, title, description, resource_url 
       FROM multilang_academy_lessons ${clause}`,
      params,
    );

    return rows.map(this.toEntity);
  }

  public async create({ entity }: { entity: LessonTranslation }): Promise<void> {
    await database.execute<ResultSetHeader>(
      `INSERT INTO multilang_academy_lessons 
        (id, lesson_id, language_id, title, description, resource_url) 
       VALUES (?, ?, ?, ?, ?, ?)`,
      [entity.id, entity.lesson_id, entity.language_id, entity.title, entity.description, entity.resource_url],
    );
  }

  public async update({ entity, where }: { entity: LessonTranslation; where: LessonTranslationFilter }): Promise<void> {
    const { clause, params } = this.buildConditions(where);

    const values = [entity.lesson_id, entity.language_id, entity.title, entity.description, entity.resource_url];

    const updateFields = `
      lesson_id = ?, 
      language_id = ?, 
      title = ?, 
      description = ?, 
      resource_url = ?
    `;

    await database.execute<ResultSetHeader>(`UPDATE multilang_academy_lessons SET ${updateFields} ${clause}`, [
      ...values,
      ...params,
    ]);
  }

  public async delete({ where }: { where: LessonTranslationFilter }): Promise<void> {
    const { clause, params } = this.buildConditions(where);

    await database.execute<ResultSetHeader>(
      `UPDATE multilang_academy_lessons SET deleted_at = NOW() ${clause}`,
      params,
    );
  }
}
