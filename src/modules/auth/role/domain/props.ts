import { PermissionProps } from '../../permission';

export interface RoleProps {
  id: string;
  name: string;
  permissions: PermissionProps[];
}
