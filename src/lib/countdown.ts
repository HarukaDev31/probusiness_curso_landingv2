export const countdownConfig = {
  apiUrl:
    import.meta.env.PUBLIC_LANDING_CURSO_COUNTDOWN_ENDPOINT ??
    import.meta.env.PUBLIC_LANDING_CONSOLIDADO_COUNTDOWN_ENDPOINT ??
    'https://intranetback.probusiness.pe/api/public/landing-consolidado/countdown',
  /** Mismo Bearer del form de curso (ya existe en Netlify). */
  formToken:
    import.meta.env.PUBLIC_LANDING_CURSO_FORM_TOKEN ??
    import.meta.env.PUBLIC_LANDING_CONSOLIDADO_FORM_TOKEN ??
    '',
  fallbackEndsAt: '2026-10-06T23:59:59-05:00',
};

interface CountdownApiResponse {
  success?: boolean;
  data?: {
    ends_at?: string | null;
  };
}

/** Fecha fin del contador (API pública + Bearer del form curso). */
export async function fetchCountdownEndsAt(): Promise<string> {
  if (!countdownConfig.apiUrl || !countdownConfig.formToken) {
    return countdownConfig.fallbackEndsAt;
  }

  try {
    const response = await fetch(countdownConfig.apiUrl, {
      headers: {
        Accept: 'application/json',
        Authorization: `Bearer ${countdownConfig.formToken}`,
      },
    });

    if (!response.ok) return countdownConfig.fallbackEndsAt;

    const json: CountdownApiResponse = await response.json();
    const endsAt = json.data?.ends_at?.trim();
    if (!json.success || !endsAt) return countdownConfig.fallbackEndsAt;

    return endsAt;
  } catch {
    return countdownConfig.fallbackEndsAt;
  }
}
