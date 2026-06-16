export const CDN_BASE = 'https://cdn.probusiness.pe/landing_curso_v2';

export function asset(path: string): string {
  const normalized = path.startsWith('/') ? path : `/${path}`;
  return `${CDN_BASE}${normalized}`;
}
