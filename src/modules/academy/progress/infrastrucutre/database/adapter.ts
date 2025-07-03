import { RowDataPacket, ResultSetHeader } from 'mysql2';
import { database } from '../../../../../database';
import { Progress } from '../../domain/entity';
import { ProgressFilter } from '../../domain/props';
import { ProgressRepository } from '../../domain/repository';

export class ProgressAdapter implements ProgressRepository {
  private readonly columns = {
    id: 'id',
    user_id: 'user_id',
    lesson_id: 'lesson_id',
  } as const;

  private buildConditions(where: ProgressFilter = {}): { clause: string; params: any[] } {
    const conditions: string[] = ['deleted_at IS NULL'];
    const params: any[] = [];

    for (const [key, column] of Object.entries(this.columns)) {
      const value = where[key as keyof ProgressFilter];
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

  private toEntity(row: RowDataPacket): Progress {
    return new Progress({
      id: row.id,
      user_id: row.user_id,
      lesson_id: row.lesson_id,
    });
  }

  public async first({ where }: { where: ProgressFilter }): Promise<Progress | null> {
    const { clause, params } = this.buildConditions(where);

    const [rows] = await database.execute<RowDataPacket[]>(
      `SELECT id, user_id, lesson_id FROM academy_progress ${clause} LIMIT 1`,
      params,
    );

    if (!rows?.length) return null;

    return this.toEntity(rows[0]);
  }

  public async get({ where = {} }: { where?: ProgressFilter }): Promise<Progress[]> {
    const { clause, params } = this.buildConditions(where);

    const [rows] = await database.execute<RowDataPacket[]>(
      `SELECT id, user_id, lesson_id FROM academy_progress ${clause}`,
      params,
    );

    return rows.map(this.toEntity);
  }

  public async create({ entity }: { entity: Progress }): Promise<void> {
    await database.execute<ResultSetHeader>(`INSERT INTO academy_progress (id, user_id, lesson_id) VALUES (?, ?, ?)`, [
      entity.id,
      entity.user_id,
      entity.lesson_id,
    ]);
  }

  public async update({ entity, where }: { entity: Progress; where: ProgressFilter }): Promise<void> {
    const { clause, params } = this.buildConditions(where);

    await database.execute<ResultSetHeader>(`UPDATE academy_progress SET user_id = ?, lesson_id = ? ${clause}`, [
      entity.user_id,
      entity.lesson_id,
      ...params,
    ]);
  }

  public async delete({ where }: { where: ProgressFilter }): Promise<void> {
    const { clause, params } = this.buildConditions(where);

    await database.execute<ResultSetHeader>(`UPDATE academy_progress SET deleted_at = NOW() ${clause}`, params);
  }
}
