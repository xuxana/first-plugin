
declare module "@capacitor/core" {
  interface PluginRegistry {
    FirstPlugin: FirstPluginPlugin;
  }
}

export interface FirstPluginPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
  testPluginMethod(options: { msg: string }): Promise<{ value: string }>
}
