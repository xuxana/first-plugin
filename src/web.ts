import { WebPlugin } from '@capacitor/core';

import type { FirstPLuginPlugin } from './definitions';

export class FirstPLuginWeb extends WebPlugin implements FirstPLuginPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
