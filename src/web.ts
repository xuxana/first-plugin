import { WebPlugin } from '@capacitor/core';

import type { FirstPluginPlugin } from './definitions';

export class FirstPluginWeb extends WebPlugin implements FirstPluginPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }

  async testPluginMethod(options: { msg: string }): Promise<{ value: string }> {
    console.warn('MyPluginMethod', options);
    return { value: options.msg };
  }

}
