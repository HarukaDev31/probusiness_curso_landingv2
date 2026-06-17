import { execSync } from 'child_process';
import { existsSync, mkdirSync } from 'fs';
import { join, dirname } from 'path';
import { fileURLToPath } from 'url';

const __dirname = dirname(fileURLToPath(import.meta.url));
const ROOT = join(__dirname, '..');
const OUTPUT = join(ROOT, 'cdn-assets', 'videos');

const sources = [
  {
    input: process.argv[2] ?? join(ROOT, '..', '..', '..', 'Downloads', 'drive-download-20260617T143642Z-3-001', 'LANDING 2.0.mp4'),
    output: 'landing-02.mp4',
    scale: '1280:-2',
  },
  {
    input: process.argv[3] ?? join(ROOT, '..', '..', '..', 'Downloads', 'drive-download-20260617T143642Z-3-001', 'TEST 1.mp4'),
    output: 'testimonial-1.mp4',
    scale: '720:-2',
  },
  {
    input: process.argv[4] ?? join(ROOT, '..', '..', '..', 'Downloads', 'drive-download-20260617T143642Z-3-001', 'TEST 2.mp4'),
    output: 'testimonial-2.mp4',
    scale: '720:-2',
  },
];

mkdirSync(OUTPUT, { recursive: true });

for (const { input, output, scale } of sources) {
  if (!existsSync(input)) {
    console.error(`No existe: ${input}`);
    process.exit(1);
  }

  const target = join(OUTPUT, output);
  console.log(`\n→ ${output}`);

  execSync(
    [
      'ffmpeg -y',
      `-i "${input}"`,
      '-c:v libx264 -crf 28 -preset medium',
      `-vf "scale=${scale}"`,
      '-movflags +faststart',
      '-c:a aac -b:a 96k -ac 2',
      `"${target}"`,
    ].join(' '),
    { stdio: 'inherit', shell: true },
  );
}

console.log(`\nVideos listos en ${OUTPUT}`);
