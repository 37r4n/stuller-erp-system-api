import 'dotenv/config';

export const config = {
  app: {
    env: process.env.NODE_ENV || 'development',
  },

  server: {
    port: Number(process.env.PORT || 8080),
    host: process.env.HOST || '127.0.0.1',
  },
};
