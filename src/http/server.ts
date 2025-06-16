import express, { json } from 'express';
import { config } from '../../config';

export class Server {
  private readonly app = express()
  private readonly host = config.server.host
  private readonly port: number

  constructor({ port }: { port: number }) {
    this.port = port

    this.setup()
  }

  private setup() {
    this.app.use(json())
  }

  public listen() {
    this.app.listen(this.port, () => {
      console.log(`Server running on http://${this.host}:${this.port}`);
    });
  }
}