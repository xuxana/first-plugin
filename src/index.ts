import { registerPlugin } from '@capacitor/core';

import type { FirstPluginPlugin } from './definitions';

const FirstPlugin = registerPlugin<FirstPluginPlugin>('FirstPlugin', {
  web: () => import('./web').then(m => new m.FirstPluginWeb()),
});

export * from './definitions';
export { FirstPlugin };
