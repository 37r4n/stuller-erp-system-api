import { Request, Response, NextFunction } from 'express';
import { ErrorBase } from '../../errors';

export const ErrorCatch = (err: Error, _req: Request, res: Response, _next: NextFunction) => {
  const error = err as ErrorBase;

  if (err instanceof ErrorBase) {
    res.status(error.code).json({
      error: { type: error.type, message: error.message },
    });
  }

  res.status(500).json({
    error: { type: 'internal', message: 'Internal server error' },
  });

  console.log(error);
};
