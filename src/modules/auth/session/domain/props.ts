export interface SessionProps {
  id: string;
  user_id: string;
  access_token: string;
  refresh_token: string;
  access_token_expires_at: Date;
  refresh_token_expires_at: Date;
  revoked_at: Date | null;
}

export interface SessionFilter {
  id?: string;
  user_id?: string;
  access_token?: string;
  refresh_token?: string;
  access_token_expires_at?: Date;
  refresh_token_expires_at?: Date;
  revoked_at?: Date | null;
}
