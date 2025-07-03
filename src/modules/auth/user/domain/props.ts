import { RoleProps } from '../../role';

export interface UserProps {
  id: string;
  code: string;
  name: string;
  is_active: boolean;
  avatar_url: string | null;
  roles: RoleProps[];
}

export interface UserFilter {
  id?: string;
  code?: string;
  name?: string;
  is_active?: boolean;
  avatar_url?: string | null;
}
