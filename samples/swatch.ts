import { Theme } from "./theme";

interface Swatch {
  name: string;
  hex: string;
  contrast?: number;
}

// Swatches that stay readable on the background
export function readable(theme: Theme, min = 4.5): Swatch[] {
  return theme.swatches
    .filter((s) => (s.contrast ?? 0) >= min)
    .sort((a, b) => a.name.localeCompare(b.name));
}

export const DEFAULT_MIN = 4.5 as const;
