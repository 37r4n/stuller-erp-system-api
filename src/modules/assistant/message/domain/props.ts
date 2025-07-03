export interface MessageProps {
  id: string;
  bot_id: string;
  user_id: string;
  skill_id: string | null;
  type: string;
  content: string | null;
  skill_parameters: string;
  timestamp: Date;
}

export interface MessageFilter {
  id?: string;
  bot_id?: string;
  user_id?: string;
  skill_id?: string | null;
  type?: string;
  content: string | null;
  skill_parameters?: string;
  timestamp?: Date;
}
