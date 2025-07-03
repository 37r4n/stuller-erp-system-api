import { RowDataPacket } from 'mysql2';
import { database } from '../../../../../database';
import { User } from '../../domain/entity';
import { UserFilter } from '../../domain/props';
import { UserRepository } from '../../domain/repository';
import { RoleProps } from '../../../role';

export class UserAdapter implements UserRepository {
  private readonly columns = {
    id: 'u.id',
    code: 'u.code',
    name: 'u.name',
    is_active: 'u.is_active',
    avatar_url: 'u.avatar_url',
  } as const;

  private buildConditions(where: UserFilter = {}): { clause: string; params: any[] } {
    const conditions: string[] = [];
    const params: any[] = [];

    for (const [key, column] of Object.entries(this.columns)) {
      const value = where[key as keyof UserFilter];
      if (value !== undefined) {
        if (value === null) {
          conditions.push(`${column} IS NULL`);
        } else {
          conditions.push(`${column} = ?`);
          params.push(value);
        }
      }
    }

    const clause = conditions.length ? `WHERE ${conditions.join(' AND ')}` : '';
    return { clause, params };
  }

  public async get({ where = {} }: { where?: UserFilter }): Promise<User[]> {
    const { clause, params } = this.buildConditions(where);

    const [rows] = await database.execute<RowDataPacket[]>(
      `
      SELECT 
        u.id AS user_id,
        u.code,
        u.name,
        u.is_active,
        u.avatar_url,
        r.id AS role_id,
        r.name AS role_name,
        p.id AS permission_id,
        p.name AS permission_name
      FROM auth_users u
      LEFT JOIN auth_user_roles ur ON ur.user_id = u.id
      LEFT JOIN auth_roles r ON r.id = ur.role_id
      LEFT JOIN auth_role_permissions rp ON rp.role_id = r.id
      LEFT JOIN auth_permissions p ON p.id = rp.permission_id
      ${clause}
      `,
      params,
    );

    if (!rows.length) return [];

    const userMap = new Map<string, User>();

    for (const row of rows) {
      const userId = row.user_id;

      if (!userMap.has(userId)) {
        userMap.set(
          userId,
          new User({
            id: userId,
            code: row.code,
            name: row.name,
            is_active: !!row.is_active,
            avatar_url: row.avatar_url,
            roles: [],
          }),
        );
      }

      const user = userMap.get(userId)!;

      if (row.role_id) {
        let role = user.roles.find((r) => r.id === row.role_id);
        if (!role) {
          role = {
            id: row.role_id,
            name: row.role_name,
            permissions: [],
          };
          user.roles.push(role);
        }

        if (row.permission_id && !role.permissions.some((p) => p.id === row.permission_id)) {
          role.permissions.push({
            id: row.permission_id,
            name: row.permission_name,
          });
        }
      }
    }

    return Array.from(userMap.values());
  }

  public async first({ where = {} }: { where?: UserFilter }): Promise<User | null> {
    const { clause, params } = this.buildConditions(where);

    const [rows] = await database.execute<RowDataPacket[]>(
      `
      SELECT 
        u.id AS user_id,
        u.code,
        u.name,
        u.is_active,
        u.avatar_url,
        r.id AS role_id,
        r.name AS role_name,
        p.id AS permission_id,
        p.name AS permission_name
      FROM auth_users u
      LEFT JOIN auth_user_roles ur ON ur.user_id = u.id
      LEFT JOIN auth_roles r ON r.id = ur.role_id
      LEFT JOIN auth_role_permissions rp ON rp.role_id = r.id
      LEFT JOIN auth_permissions p ON p.id = rp.permission_id
      ${clause}
      `,
      params,
    );

    if (!rows?.length) return null;

    const first = rows[0];

    // Agrupar roles y permisos
    const roleMap = new Map<string, RoleProps>();

    for (const row of rows) {
      const roleId = row.role_id;
      if (!roleId) continue;

      if (!roleMap.has(roleId)) {
        roleMap.set(roleId, {
          id: roleId,
          name: row.role_name,
          permissions: [],
        });
      }

      const permissionId = row.permission_id;
      if (permissionId) {
        const role = roleMap.get(roleId)!;
        const alreadyAdded = role.permissions.find((p) => p.id === permissionId);
        if (!alreadyAdded) {
          role.permissions.push({
            id: permissionId,
            name: row.permission_name,
          });
        }
      }
    }

    return new User({
      id: first.user_id,
      code: first.code,
      name: first.name,
      is_active: !!first.is_active,
      avatar_url: first.avatar_url,
      roles: Array.from(roleMap.values()),
    });
  }
}
