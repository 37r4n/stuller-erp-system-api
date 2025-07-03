import { config } from '../config';
import { Server } from './http';

export const App = () => {
  const server = new Server({ port: config.server.port });
  server.listen();
};
