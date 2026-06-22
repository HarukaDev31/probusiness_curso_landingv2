export const leadFormConfig = {
  apiUrl:
    import.meta.env.PUBLIC_LANDING_CURSO_API_URL ??
    '/api/public/landing-curso/leads',
  formToken: import.meta.env.PUBLIC_LANDING_CURSO_FORM_TOKEN ?? '',
  campaignCode: import.meta.env.PUBLIC_LANDING_CURSO_CAMPAIGN_CODE ?? 'jun2026',
  graciasPath: '/gracias',
} as const;

export type LeadFormValues = {
  nombre: string;
  whatsapp: string;
  email: string;
  experiencia_importando: string;
};

export type LeadFormField = keyof LeadFormValues;

export type LeadFormErrors = Partial<Record<LeadFormField, string>>;

const EMAIL_RE = /^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/i;
const NOMBRE_RE = /^[a-zA-ZÀ-ÿñÑ]+(?:[ '-][a-zA-ZÀ-ÿñÑ]+)*$/;

export function normalizeWhatsapp(value: string): string {
  const digits = value.replace(/\D/g, '');
  if (digits.startsWith('51') && digits.length === 11) {
    return digits.slice(2);
  }
  return digits;
}

export function formatWhatsappDisplay(value: string): string {
  const digits = normalizeWhatsapp(value);
  if (digits.length <= 3) return digits;
  if (digits.length <= 6) return `${digits.slice(0, 3)} ${digits.slice(3)}`;
  return `${digits.slice(0, 3)} ${digits.slice(3, 6)} ${digits.slice(6, 9)}`;
}

export function validateLeadForm(values: LeadFormValues): LeadFormErrors {
  const errors: LeadFormErrors = {};
  const nombre = values.nombre.trim();

  if (nombre.length < 2) {
    errors.nombre = 'Ingresa tu nombre completo.';
  } else if (nombre.length > 120) {
    errors.nombre = 'El nombre es demasiado largo.';
  } else if (!NOMBRE_RE.test(nombre)) {
    errors.nombre = 'Usa solo letras en tu nombre.';
  }

  const whatsapp = normalizeWhatsapp(values.whatsapp);
  if (!/^9\d{8}$/.test(whatsapp)) {
    errors.whatsapp = 'Ingresa un WhatsApp peruano válido de 9 dígitos.';
  }

  const email = values.email.trim();
  if (!email) {
    errors.email = 'Ingresa tu correo electrónico.';
  } else if (!EMAIL_RE.test(email)) {
    errors.email = 'Ingresa un correo electrónico válido.';
  }

  if (!['si', 'no', 'poca'].includes(values.experiencia_importando)) {
    errors.experiencia_importando = 'Selecciona una opción.';
  }

  return errors;
}

export async function submitLeadForm(values: LeadFormValues): Promise<Response> {
  const { apiUrl, formToken, campaignCode } = leadFormConfig;

  return fetch(apiUrl, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      ...(formToken ? { Authorization: `Bearer ${formToken}` } : {}),
    },
    body: JSON.stringify({
      nombre: values.nombre.trim(),
      whatsapp: normalizeWhatsapp(values.whatsapp),
      email: values.email.trim(),
      experiencia_importando: values.experiencia_importando,
      codigo_campana: campaignCode,
    }),
  });
}
