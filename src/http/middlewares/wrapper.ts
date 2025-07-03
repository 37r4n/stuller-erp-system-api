import { Router, RequestHandler } from 'express';

export function Wrapper(router: Router, wrapper: (fn: RequestHandler) => RequestHandler): Router {
  for (const layer of (router as any).stack) {
    if (layer.route) {
      for (const routeLayer of layer.route.stack) {
        if (typeof routeLayer.handle === 'function') {
          routeLayer.handle = wrapper(routeLayer.handle);
        }
      }
    }
  }
  return router;
}
