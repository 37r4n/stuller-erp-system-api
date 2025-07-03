import 'dotenv/config';

export const config = {
  app: {
    env: process.env.NODE_ENV || 'development',
    language: process.env.LANGUAGE || 'es',
  },

  server: {
    port: Number(process.env.PORT || 8080),
    host: process.env.HOST || '127.0.0.1',
  },

  database: {
    host: process.env.DATABASE_HOST || '127.0.0.1',
    port: Number(process.env.DATABASE_PORT || 3306),
    name: process.env.DATABASE_NAME || 'database',
    username: process.env.DATABASE_USERNAME || 'root',
    password: process.env.DATABASE_PASSWORD || 'root',
  },

  auth: {
    access_token_ttl: Number(process.env.ACCESS_TOKEN_TTL || 900),
    refresh_token_ttl: Number(process.env.REFRESH_TOKEN_TTL || 604800),
    salt: Number(process.env.SALT || 10),
  },
};
