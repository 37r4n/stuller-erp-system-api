import { RowDataPacket } from 'mysql2';
import { database } from '../../../../../database';
import { Language } from '../../domain/entity';
import { LanguageFilter } from '../../domain/props';
import { LanguageRepository } from '../../domain/repository';

export class LanguageAdapter implements LanguageRepository {
  private readonly columns = {
    id: 'id',
    code: 'code',
    name: 'name',
    native_name: 'native_name',
  } as const;

  private buildConditions(where: LanguageFilter): { clause: string; params: any[] } {
    const conditions: string[] = [];
    const params: any[] = [];

    for (const [key, column] of Object.entries(this.columns)) {
      const value = where[key as keyof LanguageFilter];
      if (value !== undefined) {
        if (value === null) {
          conditions.push(`${column} IS NULL`);
        } else {
          conditions.push(`${column} = ?`);
          params.push(value);
        }
      }
    }

    const clause = conditions.length > 0 ? `WHERE ${conditions.join(' AND ')}` : '';
    return { clause, params };
  }

  private toEntity(row: RowDataPacket): Language {
    return new Language({
      id: row.id,
      code: row.code,
      name: row.name,
      native_name: row.native_name,
    });
  }

  public async first({ where }: { where: LanguageFilter }): Promise<Language | null> {
    const { clause, params } = this.buildConditions(where);

    const [rows] = await database.execute<RowDataPacket[]>(
      `SELECT id, code, name, native_name FROM multilang_languages ${clause} LIMIT 1`,
      params,
    );

    if (!rows?.length) return null;

    return this.toEntity(rows[0]);
  }
}
