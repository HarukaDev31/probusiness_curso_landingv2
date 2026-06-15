# Secciones — Landing CURSO IMPORTACIÓN (ProBusiness)

**Figma:** [PROBUSINESS-LANDING-PAGE — nodo 148:134](https://www.figma.com/design/x4zJ80ENr1QyZYPHnBe8ZB/PROBUSINESS-LANDING-PAGE?node-id=148-134)

**fileKey:** `x4zJ80ENr1QyZYPHnBe8ZB`

**Frame raíz:** `148:134` — `CURSO IMPORTACIÓN` (3973 × 29038 px)

**Proyecto Astro:** `src/pages/index.astro`

---

## Leyenda de estado

| Estado | Significado |
|--------|-------------|
| 🟡 Borrador | Componente creado, no fiel al Figma |
| 🟠 En progreso | Pulido en curso |
| 🟢 Listo | Pixel-perfect / aprobado |
| ⬜ Pendiente | No implementado aún |

---

## Tokens de diseño (globales)

| Token | Valor | Uso |
|-------|-------|-----|
| `--probusiness-naranja` | `#ff6a29` | Acentos, badges, CTAs |
| Gradiente CTA | `#ff5410` → `#ff733b` | Botones principales |
| Header plan | `#ee4815` | Franja "AHORA" en pricing |
| Fondo | `#000000` | Background general |
| Tipografía títulos | **Sora** (Medium, SemiBold, Bold) | Headings, precios |
| Tipografía cuerpo | **Epilogue** (Regular, Medium, SemiBold, Bold) | Texto, botones, FAQ |

---

## Orden de secciones (de arriba a abajo)

### 01 — Header / Navegación

| Campo | Detalle |
|-------|---------|
| **Figma nodes** | `275:202` (logo), `275:2211–275:2216` (nav links) |
| **Componente** | `src/components/Header.astro` |
| **Estado** | 🟢 Listo |
| **Ancla** | `#inicio` |

**Contenido:**
- Logo probusiness + icono estrella
- Links: Inicio · Beneficios · Contenido · Planes · Preguntas Frecuentes

**Imágenes:**

| Archivo | Figma node | Estado |
|---------|------------|--------|
| `sections/01-header/logo-full.png` | `275:202` | ✅ |
| `sections/01-header/logo-text.png` | `275:203` | ✅ |
| `sections/01-header/logo-icon.png` | `275:216` | ✅ |

**Pulir:**
- [x] Assets en `sections/01-header/` desde Figma correcto
- [x] Logo compuesto `logo-full.png` (501×97)
- [x] Tipografía Epilogue Medium en nav
- [x] Estado activo al hacer scroll

---

### 02 — Hero

| Campo | Detalle |
|-------|---------|
| **Figma nodes** | `275:219`, `275:223`, `275:2218`, `275:2219`, `275:2220–275:2222`, `309:172`, `338:400` |
| **Componente** | `src/components/Hero.astro` |
| **Estado** | 🟢 Listo |
| **Ancla** | `#inicio` |

**Contenido:**
- Badge naranja: **CURSO EN VIVO** (icono `275:2223`)
- H1 + subtítulo
- 3 tarjetas con iconos
- Barra **Ver clase gratuita / Clase PRO** → `ClassBar.astro`

**Imágenes:**

| Archivo | Figma node | Estado |
|---------|------------|--------|
| `sections/02-hero/hero-cajas.png` | `309:172` | ✅ |
| `sections/02-hero/bg-hero.png` | `338:400` | ✅ |
| `sections/02-hero/icon-curso-vivo.png` | `275:2223` | ✅ |
| `sections/02-hero/icon-plane.png` | `275:2244` | ✅ |
| `sections/02-hero/icon-ship.png` | `275:2247` | ✅ |
| `sections/02-hero/icon-peru.png` | `275:2254` | ✅ |
| `sections/02-hero/logo-ccl.png` | `275:2260` | ✅ |
| `sections/02-hero/card-*-ref.png` | `275:220–222` | ✅ referencia |

**Pulir:**
- [x] Imagen principal de cajas
- [x] Fondo mapa mundial
- [x] Tarjetas con iconos reales (HTML + SVG)
- [x] ClassBar separado
- [x] Tipografías responsivas escaladas desde artboard 3973px

---

### 03 — Barra "Ver clase gratuita / Clase PRO"

| Campo | Detalle |
|-------|---------|
| **Figma nodes** | `471:3112` (Group 410) |
| **Componente** | `src/components/ClassBar.astro` |
| **Estado** | 🟢 Listo |

**Contenido:**
- Izquierda: icono play + **Ver clase gratuita**
- Derecha: **Clase** (naranja) + badge **PRO** (fondo naranja)

**Imágenes a descargar:**

| Archivo sugerido | Figma node | Estado |
|------------------|------------|--------|
| `sections/03-video-stats/play-icon.png` | `275:2531` | ✅ descargado → `public/images/play-icon.png` |

**Pulir:**
- [x] Extraer a `src/components/ClassBar.astro`
- [x] Layout full-width con borde/fondo del diseño
- [x] Link ancla al video (`#video`)

---

### 04 — Video + Stats "¿Por qué importar de China?"

| Campo | Detalle |
|-------|---------|
| **Figma nodes** | `275:2276`, `275:2271`, `487:324`, `275:2273–275:2283`, `275:2288–275:2307`, `552:221` |
| **Componente** | `src/components/Stats.astro` |
| **Estado** | 🟢 Listo |

**Contenido:**
- Video embebido (rectángulo `275:2276`) con botón play (`487:324`)
- Título: **¿Por qué importar de China?**
- Stats con iconos:
  - `+10 años` — De experiencia (`275:2288`)
  - `+5.000` — Alumnos formados (`275:2299`)
  - `+500` — Importaciones realizadas (`275:2307`)
- CTA: **Quiero empezar ahora** (`552:221`)

**Imágenes a descargar:**

| Archivo sugerido | Figma node | Nombre en Figma |
|------------------|------------|-----------------|
| `sections/03-video-stats/video-thumbnail.png` | `275:2276` | Rectangle 486 |
| `sections/03-video-stats/play-overlay.svg` | `275:2278` | fi_27223 |
| `sections/03-video-stats/icon-experiencia.svg` | `275:2288` | fi_4249182 |
| `sections/03-video-stats/icon-alumnos.svg` | `275:2299` | fi_3712225 |
| `sections/03-video-stats/icon-importaciones.svg` | `275:2307` | fi_8729048 |
| `sections/03-video-stats/bg-wave.svg` | `471:3111` | Vector (fondo decorativo) |

**Pulir:**
- [x] Thumbnail real del video
- [x] Iconos SVG de stats
- [x] Botón CTA con glow exacto
- [x] Separadores con `divide-y`

---

### 05 — Intro + Puntillismo decorativo

| Campo | Detalle |
|-------|---------|
| **Figma nodes** | `275:2272`, `275:225`, `290:137`, `275:224` |
| **Componente** | `src/components/Features.astro` |
| **Estado** | 🟢 Listo |
| **Ancla** | `#contenido` |

**Contenido:**
- *Con nuestro curso aprenderás paso a paso cómo importar de manera segura, rentable y sin errores*

**Imágenes a descargar:**

| Archivo sugerido | Figma node | Nombre en Figma |
|------------------|------------|-----------------|
| `sections/04-features/puntillismo.svg` | `275:225` | PUNTILLISMO |
| `sections/04-features/wave-divider.svg` | `275:224` | Vector |
| `sections/04-features/puntos.svg` | `290:137` | PUNTOS |

**Pulir:**
- [x] Intro textual implementada
- [x] Fondo decorativo de puntos (CSS radial-gradient)

---

### 06 — Antes / Después del curso

| Campo | Detalle |
|-------|---------|
| **Figma nodes** | `275:2315–275:2326`, `275:2318`, `275:2320`, `275:2335–275:2366`, `275:201`, `275:2313–275:2314` |
| **Componente** | `src/components/BeforeAfter.astro` |
| **Estado** | 🟢 Listo |
| **Ancla** | `#beneficios` |

**Contenido:**
- Columna izq. **Antes del curso** (icono triste `275:2320`)
- Columna der. **Después del curso** (icono feliz `275:2318`)
- Listas con bullets (`fi_3114815` ×5 / `fi_157977` ×5)

**Imágenes a descargar:**

| Archivo sugerido | Figma node | Nombre en Figma |
|------------------|------------|-----------------|
| `sections/05-before-after/icon-antes.svg` | `275:2320` | fi_3416079 |
| `sections/05-before-after/icon-despues.svg` | `275:2318` | fi_87932 |
| `sections/05-before-after/bullet-negativo.svg` | `275:2335` | fi_3114815 |
| `sections/05-before-after/bullet-positivo.svg` | `275:2350` | fi_157977 |
| `sections/05-before-after/bg-puerto.png` | `275:201` | large-orange-crane-port-area 1 |
| `sections/05-before-after/bg-panel-izq.png` | `275:2313` | Rectangle 489 |
| `sections/05-before-after/bg-panel-der.png` | `275:2314` | Rectangle 490 |

**Pulir:**
- [x] Layout de dos paneles con fondo de puerto
- [x] Iconos reales arriba de cada columna
- [x] Bullets custom del Figma

---

### 07 — Instructor / Presentación

| Campo | Detalle |
|-------|---------|
| **Figma nodes** | `312:175`, `312:176` |
| **Componente** | `src/components/Instructor.astro` |
| **Estado** | 🟢 Listo |

**Contenido:**
- Foto del instructor (`contrbegoñesr 1`)
- Grid decorativo de fondo

**Imágenes a descargar:**

| Archivo sugerido | Figma node | Nombre en Figma |
|------------------|------------|-----------------|
| `sections/06-instructor/foto-instructor.png` | `312:175` | contrbegoñesr 1 |
| `sections/06-instructor/bg-grid.png` | `312:176` | grid 1 |

**Pulir:**
- [x] Componente creado e insertado en `index.astro`
- [x] Foto contenedor + grid de fondo

---

### 08 — Categorías de productos (masonry)

| Campo | Detalle |
|-------|---------|
| **Figma nodes** | `461:324–461:381`, `461:333–461:382`, `461:351`, `461:364`, `461:377` |
| **Componente** | `src/components/Categories.astro` |
| **Estado** | 🟢 Listo |

**Contenido (grid irregular):**
- Tecnología · Vehículos · Juguetes · Maletas · Joyas · Y más
- Cada celda es un rectángulo 799×799 con imagen de producto (mask groups en algunas)

**Imágenes a descargar:**

| Archivo sugerido | Figma node | Categoría |
|------------------|------------|-----------|
| `sections/07-categories/tecnologia.jpg` | `461:325` | Rectangle 570 |
| `sections/07-categories/vehiculos.jpg` | `461:340` | Rectangle 578 |
| `sections/07-categories/juguetes.jpg` | `461:355` | Rectangle 582 |
| `sections/07-categories/maletas.jpg` | `461:361` | Rectangle 584 |
| `sections/07-categories/joyas.jpg` | `461:376` | Rectangle 588 |
| `sections/07-categories/y-mas.jpg` | `461:381` | Rectangle 589 |
| + resto de rectangles `461:324–461:332` | — | Imágenes adicionales del grid |

**Pulir:**
- [x] Grid masonry irregular (Tecnología 2×2)
- [x] Imágenes reales por categoría
- [x] Tipografía sobre cada imagen

---

### 09 — Testimonios + Casos de éxito

| Campo | Detalle |
|-------|---------|
| **Figma nodes** | `275:2371`, `275:2406`, `275:2377–275:2380`, `275:2381–275:2388`, `337:361–337:362`, `292:164` |
| **Componente** | `src/components/Testimonials.astro` |
| **Estado** | 🟢 Listo |

**Contenido:**
- Título: **Ellos ya están importando con éxito**
- Subtítulo: **Vídeos Testimoniales**
- 4 cards verticales con video + **CASO DE ÉXITO** + *Jhonny — Racks para TV*

**Imágenes a descargar:**

| Archivo sugerido | Figma node | Nombre en Figma |
|------------------|------------|-----------------|
| `sections/08-testimonials/bg-section.png` | `337:361` | freepik_assistant (3) 1 |
| `sections/08-testimonials/bg-section-2.png` | `337:362` | freepik_assistant (3) 2 |
| `sections/08-testimonials/bg-wave.png` | `292:164` | ChatGPT Image 5 may 2026 |
| `sections/08-testimonials/card-1.png` | `275:2377` | Rectangle 19 |
| `sections/08-testimonials/card-2.png` | `275:2378` | Rectangle 493 |
| `sections/08-testimonials/card-3.png` | `275:2379` | Rectangle 495 |
| `sections/08-testimonials/card-4.png` | `275:2380` | Rectangle 497 |
| `sections/08-testimonials/play.svg` | `275:2393` | fi_27223 |

**Pulir:**
- [x] Cards verticales altas (aspect 3/5)
- [x] 4 thumbnails distintos
- [x] Fondo decorativo de la sección

---

### 10 — Temario + Pricing (planes)

| Campo | Detalle |
|-------|---------|
| **Figma nodes** | `275:2555`, `526:235`, `552:208`, `456:283–456:284`, `275:2552`, `456:254–456:270` |
| **Componente** | `src/components/Pricing.astro` |
| **Estado** | 🟢 Listo |
| **Ancla** | `#planes` |

**Contenido:**
- Label: **Temario del Curso**
- Plan **AHORA** (naranja, S/ 550,00) — temario 10 ítems
- Plan **ANTES** (gris, S/ 950,00 tachado)
- Promo: **PROMOCIÓN POR TIEMPO LIMITADO**
- Código **CURSOPRO** + botón COPIAR
- **\*CUPOS LIMITADOS**
- Mascota/imagen `552:208`

**Imágenes a descargar:**

| Archivo sugerido | Figma node | Nombre en Figma |
|------------------|------------|-----------------|
| `sections/09-pricing/mascota.png` | `552:208` | ChatGPT_Image_14_may_2026... |
| `sections/09-pricing/icon-copy.svg` | `456:270` | fi_1827938 |
| `sections/09-pricing/arrow-ahora.svg` | `446:181` | fi_271234 |
| `sections/09-pricing/arrow-antes.svg` | `446:190` | fi_271234 |
| `sections/09-pricing/divider.svg` | `275:2547` | Vector 35 |
| `sections/09-pricing/strike-line.svg` | `275:2534` | Vector 39 |
| `sections/09-pricing/bg-logistica.png` | `292:165` | concepto-logistica-cajas... |

**Pulir:**
- [x] Cards superpuestas (offset) como en Figma
- [x] Badge PRO con gradiente
- [x] Mascota flotante junto al código
- [x] Glow naranja en card principal + icono COPIAR

---

### 11 — Countdown promocional

| Campo | Detalle |
|-------|---------|
| **Figma nodes** | `275:2518–275:2521`, `275:2522–275:2530` |
| **Componente** | `src/components/Countdown.astro` |
| **Estado** | 🟢 Listo |

**Contenido:**
- 4 bloques: **02** DÍAS · **15** HORAS · **37** min · **28** seg
- Cajas decorativas de fondo

**Imágenes a descargar:**

| Archivo sugerido | Figma node |
|------------------|------------|
| `sections/10-countdown/box-1.png` | `275:2518` |
| `sections/10-countdown/box-2.png` | `275:2520` |
| `sections/10-countdown/box-3.png` | `275:2519` |
| `sections/10-countdown/box-4.png` | `275:2521` |

**Pulir:**
- [x] Countdown dinámico con JavaScript
- [x] Tipografía Sora grande
- [x] Caja `#282828` con borde blanco (Figma)

---

### 12 — Beneficios del curso (4 iconos)

| Campo | Detalle |
|-------|---------|
| **Figma nodes** | `275:2408–275:2412`, `461:313–461:316` |
| **Componente** | `src/components/Benefits.astro` |
| **Estado** | 🟢 Listo |

**Contenido:**
- 2 Semanas de clases intensivas
- Soporte y asesoría personalizada
- Acceso a la comunidad PRO BUSINESS
- Acceso a nuestra Carga Consolidada

**Imágenes a descargar:**

| Archivo sugerido | Figma node |
|------------------|------------|
| `sections/11-benefits/icon-semanas.png` | `461:313` (ICODCN 1) |
| `sections/11-benefits/icon-comunidad.png` | `461:315` (ICODCN 2) |
| `sections/11-benefits/icon-soporte.png` | `461:316` (ICODCN 3) |
| `sections/11-benefits/icon-carga.png` | `461:314` (ICODCN 4) |

**Pulir:**
- [x] Componente propio `Benefits.astro`
- [x] Iconos ICODCN reales
- [x] Grid 4 columnas responsive

---

### 13 — FAQ (Preguntas frecuentes)

| Campo | Detalle |
|-------|---------|
| **Figma nodes** | `275:2407`, `275:2437–329:254`, `275:2443–329:255` |
| **Componente** | `src/components/FAQ.astro` |
| **Estado** | 🟢 Listo |
| **Ancla** | `#faq` |

**Contenido (7 preguntas):**
1. ¿Necesito experiencia para tomar el curso?
2. ¿Cuánto dinero necesito para empezar?
3. ¿El curso es en vivo o grabado?
4. ¿Qué pasa después de terminar el curso?
5. ¿Cómo sé qué producto importar para no perder dinero?
6. ¿Qué pasa si tengo problemas con Aduanas o mi mercadería?
7. ¿Qué pasa si me estafan o el proveedor no es confiable?

**Imágenes:** ninguna (solo UI con chevron `>`)

**Pulir:**
- [x] Layout 2 columnas en desktop
- [x] Acordeón con chevron `›` naranja
- [x] Respuestas con copy del curso

---

### 14 — Formulario de contacto / Inscripción

| Campo | Detalle |
|-------|---------|
| **Figma nodes** | `444:138`, `275:2458–275:2471`, `552:231`, `332:327–332:329`, `275:2456` |
| **Componente** | `src/components/ContactForm.astro` |
| **Estado** | 🟢 Listo |
| **Ancla** | `#contacto` |

**Contenido:**
- Título: **Tu próxima importación, cada vez más cerca**
- Campos: Nombre · WhatsApp · Email · ¿Tienes experiencia importando?
- CTA: **Inscribirme ahora**
- Nota: *Un asesor te contactará para confirmar tu inscripción*

**Imágenes a descargar:**

| Archivo sugerido | Figma node | Nombre en Figma |
|------------------|------------|-----------------|
| `sections/13-contact/bg-left.png` | `332:327` | freepik_assistant (2) 1 |
| `sections/13-contact/caja-producto.png` | `332:328` | cajaprod 1 |
| `sections/13-contact/puntos.svg` | `332:329` | PUNTOS |
| `sections/13-contact/chevron-select.svg` | `275:2471` | Group |

**Pulir:**
- [x] Imagen de caja/producto a la izquierda
- [x] Inputs con estilo del diseño
- [x] Feedback visual al enviar (sin backend aún)

---

### 15 — Footer

| Campo | Detalle |
|-------|---------|
| **Figma nodes** | `275:2473`, `275:2507–461:320`, `275:2509`, `275:2510`, `464:428` |
| **Componente** | `src/components/Footer.astro` |
| **Estado** | 🟢 Listo |

**Contenido:**
- Logo grande (`275:2473`)
- Respaldado por la CCL · Sede propia en China
- Stats: **+5000** Alumnos egresados · **+10** Años de experiencia
- Copyright: *2026, probusiness. Todos los derechos reservados*

**Imágenes a descargar:**

| Archivo sugerido | Figma node | Nombre en Figma |
|------------------|------------|-----------------|
| `sections/14-footer/logo-large.png` | `275:2473` | Logos |
| `sections/14-footer/logo-ccl.png` | `275:2509` | CCL WEB 1 1 |
| `sections/14-footer/icon-china.svg` | `275:2510` | fi_330651 |

**Pulir:**
- [x] Logo del header reutilizado
- [x] Layout horizontal de badges + stats
- [x] Icono sede China + logo CCL

---

## Secciones decorativas / globales (sin componente propio)

| Elemento | Figma node | Notas |
|----------|------------|-------|
| Puntillismo general | `275:225` | Patrón de puntos naranjas — varias secciones |
| Vectores de transición | `338:401`, `291:145`, `275:224` | Dividers entre secciones |
| Fondo blanco sección media | `292:167` | Rectangle 10 — zona testimonios/temario |

---

## Cómo descargar imágenes desde Figma

### Opción A — MCP (recomendado cuando hay cuota)

```txt
get_design_context → fileKey: x4zJ80ENr1QyZYPHnBe8ZB, nodeId: <ID>
```

La respuesta incluye URLs temporales (`figma.com/api/mcp/asset/...`) válidas ~7 días.

### Opción B — Export manual en Figma

1. Seleccionar el nodo en Figma (usar node-id de la URL: `148-134` → `148:134`)
2. Panel derecho → Export → PNG 2x o SVG (iconos)
3. Guardar en la carpeta indicada en la tabla de cada sección

### Opción C — Script con URLs del MCP

```powershell
Invoke-WebRequest -Uri "<URL_ASSET>" -OutFile "public/images/sections/<carpeta>/<archivo>" -UseBasicParsing
```

---

## Orden sugerido de pulido

1. **01 Header** — logo y nav (rápido, base de todo)
2. **02 Hero** — primera impresión + imagen cajas
3. **03 Video + Stats** — video thumbnail + iconos
4. **09 Pricing** — conversión principal
5. **14 Contacto** — formulario + imágenes
6. **06 Before/After** — storytelling
7. **08 Categorías** — masonry con fotos
8. **09 Testimonios** — videos/cards
9. **11 Countdown** — dinámico
10. **13 FAQ** — copy final
11. **15 Footer** — cierre
12. **07 Instructor** — sección pendiente
13. Decorativos globales (puntillismo, waves)

---

## Mapa componente ↔ sección

| # | Sección Figma | Componente Astro | En `index.astro` |
|---|---------------|------------------|------------------|
| 01 | Header | `Header.astro` | 🟢 Listo |
| 02–03 | Hero + ClassBar | `Hero.astro`, `ClassBar.astro` | 🟢 Listo |
| 04 | Video + Stats | `Stats.astro` | 🟢 Listo |
| 05 | Intro features | `Features.astro` | 🟢 Listo |
| 06 | Antes/Después | `BeforeAfter.astro` | 🟢 Listo |
| 07 | Instructor | `Instructor.astro` | 🟢 Listo |
| 08 | Categorías | `Categories.astro` | 🟢 Listo |
| 09 | Testimonios | `Testimonials.astro` | 🟢 Listo |
| 10 | Pricing | `Pricing.astro` | 🟢 Listo |
| 11 | Countdown | `Countdown.astro` | 🟢 Listo |
| 12 | Beneficios 4 íconos | `Benefits.astro` | 🟢 Listo |
| 13 | FAQ | `FAQ.astro` | 🟢 Listo |
| 14 | Contacto | `ContactForm.astro` | 🟢 Listo |
| 15 | Footer | `Footer.astro` | 🟢 Listo |

---

## Próximo paso

**Landing completa** — 15/15 secciones implementadas. Para re-descargar assets cuando expiren las URLs del MCP (~7 días):

```powershell
.\scripts\download-assets.ps1
```

Pendientes opcionales fuera de scope visual:
- Integración backend del formulario (CRM / WhatsApp API)
- URLs reales de videos testimoniales
- Decorativos SVG adicionales (waves, puntillismo exportado)
