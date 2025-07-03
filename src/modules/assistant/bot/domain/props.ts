export interface BotProps {
  id: string;
  name: string;
  role: string;
  task: string;
  avatar_url: string | null;
  skills: {
    id: string;
    name: string;
    descripion: string;
    parameters: {
      name: string;
      type: string;
      description: string;
    }[];
  }[];
}

export interface BotFilter {
  id?: string;
  name?: string;
  role?: string;
  task?: string;
  avatar_url?: string | null;
}
