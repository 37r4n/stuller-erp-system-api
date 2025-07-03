import { ResultSetHeader, RowDataPacket } from 'mysql2';
import { database } from '../../../../../database';
import { Session } from '../../domain/entity';
import { SessionFilter } from '../../domain/props';
import { SessionRepository } from '../../domain/repository';

export class SessionAdapter implements SessionRepository {
  private readonly columns = {
    id: 'id',
    user_id: 'user_id',
    access_token: 'access_token',
    refresh_token: 'refresh_token',
    access_token_expires_at: 'access_token_expires_at',
    refresh_token_expires_at: 'refresh_token_expires_at',
    revoked_at: 'revoked_at',
  } as const;

  private buildConditions(where: SessionFilter): { clause: string; params: any[] } {
    const conditions: string[] = ['deleted_at IS NULL'];
    const params: any[] = [];

    for (const [key, column] of Object.entries(this.columns)) {
      const value = where[key as keyof SessionFilter];
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

  public async first({ where }: { where: SessionFilter }): Promise<Session | null> {
    const { clause, params } = this.buildConditions(where);

    const [rows] = await database.execute<RowDataPacket[]>(
      `SELECT 
        id,
        user_id,
        access_token,
        refresh_token,
        access_token_expires_at,
        refresh_token_expires_at,
        revoked_at
      FROM auth_sessions ${clause} LIMIT 1`,
      params,
    );

    if (!rows?.length) return null;
    const row = rows[0];

    return new Session({
      id: row.id,
      user_id: row.user_id,
      access_token: row.access_token,
      refresh_token: row.refresh_token,
      access_token_expires_at: new Date(row.access_token_expires_at),
      refresh_token_expires_at: new Date(row.refresh_token_expires_at),
      revoked_at: row.revoked_at ? new Date(row.revoked_at) : null,
    });
  }

  public async get({ where = {} }: { where?: SessionFilter }): Promise<Session[]> {
    const { clause, params } = this.buildConditions(where);

    const [rows] = await database.execute<RowDataPacket[]>(
      `SELECT 
        id,
        user_id,
        access_token,
        refresh_token,
        access_token_expires_at,
        refresh_token_expires_at,
        revoked_at
      FROM auth_sessions ${clause}`,
      params,
    );

    return rows.map(
      (row) =>
        new Session({
          id: row.id,
          user_id: row.user_id,
          access_token: row.access_token,
          refresh_token: row.refresh_token,
          access_token_expires_at: new Date(row.access_token_expires_at),
          refresh_token_expires_at: new Date(row.refresh_token_expires_at),
          revoked_at: row.revoked_at ? new Date(row.revoked_at) : null,
        }),
    );
  }

  public async create({ entity }: { entity: Session }): Promise<void> {
    await database.execute<ResultSetHeader>(
      `INSERT INTO auth_sessions (
        id,
        user_id,
        access_token,
        refresh_token,
        access_token_expires_at,
        refresh_token_expires_at,
        revoked_at
      ) VALUES (?, ?, ?, ?, ?, ?, ?)`,
      [
        entity.id,
        entity.user_id,
        entity.access_token,
        entity.refresh_token,
        entity.access_token_expires_at,
        entity.refresh_token_expires_at,
        entity.revoked_at,
      ],
    );
  }

  public async update({ entity, where }: { entity: Session; where: SessionFilter }): Promise<void> {
    const fields = [
      'user_id = ?',
      'access_token = ?',
      'refresh_token = ?',
      'access_token_expires_at = ?',
      'refresh_token_expires_at = ?',
      'revoked_at = ?',
    ];
    const values = [
      entity.user_id,
      entity.access_token,
      entity.refresh_token,
      entity.access_token_expires_at,
      entity.refresh_token_expires_at,
      entity.revoked_at,
    ];
    const { clause, params } = this.buildConditions(where);

    await database.execute<ResultSetHeader>(`UPDATE auth_sessions SET ${fields.join(', ')} ${clause}`, [
      ...values,
      ...params,
    ]);
  }

  public async delete({ where }: { where: SessionFilter }): Promise<void> {
    const { clause, params } = this.buildConditions(where);
    await database.execute<ResultSetHeader>(`UPDATE auth_sessions SET deleted_at = NOW() ${clause}`, params);
  }
}
