/**
 * El artboard Figma (3973px) es @2x — el ancho lógico de diseño es la mitad.
 * Escalamos al contenedor web (1600px máx).
 */
export const FIGMA_W = 1987;
export const SITE_MAX = 1600;

export function f(px: number, minPx?: number): string {
  const scaled = `calc(${px}px * min(100vw, ${SITE_MAX}px) / ${FIGMA_W})`;
  return minPx != null ? `max(${minPx}px, ${scaled})` : scaled;
}

export const sitePad = f(150);
