export interface FirstPLuginPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
