import { registerPlugin } from '@capacitor/core';

import type { FirstPLuginPlugin } from './definitions';

const FirstPLugin = registerPlugin<FirstPLuginPlugin>('FirstPLugin', {
  web: () => import('./web').then(m => new m.FirstPLuginWeb()),
});

export * from './definitions';
export { FirstPLugin };
