import { RowDataPacket, ResultSetHeader } from 'mysql2';
import { database } from '../../../../../database';
import { SectionTranslation } from '../../domain/entity';
import { SectionTranslationFilter } from '../../domain/props';
import { SectionTranslationRepository } from '../../domain/repository';

export class SectionTranslationAdapter implements SectionTranslationRepository {
  private readonly columns = {
    id: 'id',
    section_id: 'section_id',
    language_id: 'language_id',
    title: 'title',
    description: 'description',
  } as const;

  private buildConditions(where: SectionTranslationFilter): { clause: string; params: any[] } {
    const conditions: string[] = ['deleted_at IS NULL'];
    const params: any[] = [];

    for (const [key, column] of Object.entries(this.columns)) {
      const value = where[key as keyof SectionTranslationFilter];
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

  private toEntity(row: RowDataPacket): SectionTranslation {
    return new SectionTranslation({
      id: row.id,
      section_id: row.section_id,
      language_id: row.language_id,
      title: row.title,
      description: row.description,
    });
  }

  public async first({ where }: { where: SectionTranslationFilter }): Promise<SectionTranslation | null> {
    const { clause, params } = this.buildConditions(where);

    const [rows] = await database.execute<RowDataPacket[]>(
      `SELECT id, section_id, language_id, title, description 
       FROM multilang_academy_sections ${clause} LIMIT 1`,
      params,
    );

    if (!rows?.length) return null;

    return this.toEntity(rows[0]);
  }

  public async get({ where }: { where: SectionTranslationFilter }): Promise<SectionTranslation[]> {
    const { clause, params } = this.buildConditions(where);

    const [rows] = await database.execute<RowDataPacket[]>(
      `SELECT id, section_id, language_id, title, description 
       FROM multilang_academy_sections ${clause}`,
      params,
    );

    return rows.map(this.toEntity);
  }

  public async create({ entity }: { entity: SectionTranslation }): Promise<void> {
    await database.execute<ResultSetHeader>(
      `INSERT INTO multilang_academy_sections 
        (id, section_id, language_id, title, description) 
       VALUES (?, ?, ?, ?, ?)`,
      [entity.id, entity.section_id, entity.language_id, entity.title, entity.description],
    );
  }

  public async update({
    entity,
    where,
  }: {
    entity: SectionTranslation;
    where: SectionTranslationFilter;
  }): Promise<void> {
    const { clause, params } = this.buildConditions(where);

    const values = [entity.section_id, entity.language_id, entity.title, entity.description];

    const updateFields = `
      section_id = ?, 
      language_id = ?, 
      title = ?, 
      description = ?
    `;

    await database.execute<ResultSetHeader>(`UPDATE multilang_academy_sections SET ${updateFields} ${clause}`, [
      ...values,
      ...params,
    ]);
  }

  public async delete({ where }: { where: SectionTranslationFilter }): Promise<void> {
    const { clause, params } = this.buildConditions(where);

    await database.execute<ResultSetHeader>(
      `UPDATE multilang_academy_sections SET deleted_at = NOW() ${clause}`,
      params,
    );
  }
}
