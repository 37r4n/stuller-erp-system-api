import express, { json } from 'express';
import cors from 'cors';
import { config } from '../../config';
import { router } from './router';
import { ErrorCatch } from './middlewares/error-catch';

export class Server {
  private readonly app = express();
  private readonly host = config.server.host;
  private readonly port: number;

  constructor({ port }: { port: number }) {
    this.port = port;

    this.setup();
  }

  private setup() {
    this.app.use(cors());
    this.app.use(json());
    this.app.use('/public', express.static('public'))
    this.app.use('/api', router);
    this.app.use(ErrorCatch);
  }

  public listen() {
    this.app.listen(this.port, () => {
      console.log(`Server running on http://${this.host}:${this.port}`);
    });
  }
}
