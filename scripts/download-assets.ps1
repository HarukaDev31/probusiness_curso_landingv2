$ErrorActionPreference = 'Stop'
$root = Split-Path $PSScriptRoot -Parent
Set-Location $root

$map = [ordered]@{
  'public/images/sections/01-header/logo-full.png' = 'https://www.figma.com/api/mcp/asset/7b9473fa-90e9-48a2-be80-ab27c3fcdf30'
  'public/images/sections/02-hero/hero-cajas.png' = 'https://www.figma.com/api/mcp/asset/93076911-b991-4e4b-b472-c4b60bc69ab5'
  'public/images/sections/02-hero/bg-hero.png' = 'https://www.figma.com/api/mcp/asset/1e7adee1-b511-48c7-bf9c-a2a4d00ca96d'
  'public/images/sections/02-hero/icon-curso-vivo.png' = 'https://www.figma.com/api/mcp/asset/c7f62f0b-0812-4e41-89e1-d4dec8900573'
  'public/images/sections/02-hero/icon-peru.png' = 'https://www.figma.com/api/mcp/asset/299b9d09-71da-4ce0-85ff-d903a6d6c968'
  'public/images/sections/02-hero/icon-plane.png' = 'https://www.figma.com/api/mcp/asset/256b79d5-606c-4391-85ee-fddfbfba7de9'
  'public/images/sections/02-hero/icon-ship.png' = 'https://www.figma.com/api/mcp/asset/d3fc53fd-5901-4339-89e5-68c84b087f49'
  'public/images/sections/02-hero/logo-ccl.png' = 'https://www.figma.com/api/mcp/asset/fb4c8de1-ce01-41a8-b6a0-29a20ea5f0bf'
  'public/images/sections/02-hero/card-sin-exp.png' = 'https://www.figma.com/api/mcp/asset/edeff40b-fd20-49f6-8890-90a8fa3a8791'
  'public/images/sections/02-hero/card-peru.png' = 'https://www.figma.com/api/mcp/asset/feb811b8-688c-4f2b-8ccb-4e8a5679d0bc'
  'public/images/sections/02-hero/icon-play-classbar.svg' = 'https://www.figma.com/api/mcp/asset/f4649ea1-12c4-4152-b4f6-574b239121ce'
  'public/images/sections/03-video-stats/video-thumbnail.png' = 'https://www.figma.com/api/mcp/asset/6ce63bfe-1bba-4ba7-826a-2a7c2f6d7335'
  'public/images/sections/03-video-stats/play-overlay.png' = 'https://www.figma.com/api/mcp/asset/507b83d3-880a-46e7-adb5-047558f5eb91'
  'public/images/sections/03-video-stats/play-icon.png' = 'https://www.figma.com/api/mcp/asset/01b41c16-f1c6-4661-a69e-f8ed329b6ab1'
  'public/images/sections/03-video-stats/icon-experiencia.png' = 'https://www.figma.com/api/mcp/asset/9bfd9a55-93f6-47f5-821a-d176dac9eb24'
  'public/images/sections/03-video-stats/icon-alumnos.png' = 'https://www.figma.com/api/mcp/asset/6a3772ba-4c20-40c9-8396-79109083c3a9'
  'public/images/sections/03-video-stats/icon-importaciones.png' = 'https://www.figma.com/api/mcp/asset/cc10ce4c-2a82-4f4d-b3c9-4ff75c53c886'
  'public/images/sections/05-before-after/icon-antes.png' = 'https://www.figma.com/api/mcp/asset/a9ac6f08-20c8-46a0-8184-7dc0dce0a58f'
  'public/images/sections/05-before-after/icon-despues.png' = 'https://www.figma.com/api/mcp/asset/fbbda510-e26f-462e-a601-ce2512f8069d'
  'public/images/sections/05-before-after/bullet-negativo.png' = 'https://www.figma.com/api/mcp/asset/f2f81121-46c7-477e-9f91-1ba709720d16'
  'public/images/sections/05-before-after/bullet-positivo.png' = 'https://www.figma.com/api/mcp/asset/9b18c900-e41b-4a57-b929-9d991f2c4491'
  'public/images/sections/05-before-after/bg-puerto.png' = 'https://www.figma.com/api/mcp/asset/a30f88f3-49c8-41c2-94da-2c27001b08d3'
  'public/images/sections/06-instructor/foto-instructor.png' = 'https://www.figma.com/api/mcp/asset/24d8dc81-98b2-4ac0-8064-1e0907c97c4d'
  'public/images/sections/06-instructor/bg-grid.png' = 'https://www.figma.com/api/mcp/asset/e2bb0400-7786-444b-a3ef-aef8a09eabe8'
  'public/images/sections/07-categories/tecnologia.png' = 'https://www.figma.com/api/mcp/asset/5b1f875e-6afa-4797-b46c-d243cf128883'
  'public/images/sections/07-categories/vehiculos.png' = 'https://www.figma.com/api/mcp/asset/bab5bda1-a55f-4d26-a97e-9f1f68cb4057'
  'public/images/sections/07-categories/juguetes.png' = 'https://www.figma.com/api/mcp/asset/3ecc3755-a70d-4938-97c5-7eb8917251f8'
  'public/images/sections/07-categories/maletas.png' = 'https://www.figma.com/api/mcp/asset/d0e15a4b-69c3-45b9-88db-584e88cd7cb0'
  'public/images/sections/07-categories/joyas.png' = 'https://www.figma.com/api/mcp/asset/09dd4827-cdd2-4651-8fb1-7d128e72d8b2'
  'public/images/sections/07-categories/y-mas.png' = 'https://www.figma.com/api/mcp/asset/bae98726-7bf7-4d60-8777-46d820982588'
  'public/images/sections/08-testimonials/card-1.png' = 'https://www.figma.com/api/mcp/asset/e4103aa7-e597-4a14-830b-5ac3028b4b6a'
  'public/images/sections/08-testimonials/card-2.png' = 'https://www.figma.com/api/mcp/asset/62b156ff-6f0e-48b9-8aee-6f6415d76e0b'
  'public/images/sections/08-testimonials/card-3.png' = 'https://www.figma.com/api/mcp/asset/18975f3e-da0b-46d0-a26e-caf3f1028ff1'
  'public/images/sections/08-testimonials/card-4.png' = 'https://www.figma.com/api/mcp/asset/207504d7-14a7-4c9d-9676-55930888f524'
  'public/images/sections/08-testimonials/bg-section.png' = 'https://www.figma.com/api/mcp/asset/7ba43985-1027-4e0d-b187-79039105ff47'
  'public/images/sections/09-pricing/mascota.png' = 'https://www.figma.com/api/mcp/asset/ecfe5de2-18b8-49b0-b686-c9bb95357dc2'
  'public/images/sections/09-pricing/icon-copy.svg' = 'https://www.figma.com/api/mcp/asset/6313cac2-0a04-45e9-819b-adb3e8752b86'
  'public/images/sections/11-benefits/icon-semanas.png' = 'https://www.figma.com/api/mcp/asset/bcc28788-5338-4c89-ab69-742adb31efd0'
  'public/images/sections/11-benefits/icon-comunidad.png' = 'https://www.figma.com/api/mcp/asset/83247b2d-91fe-42ae-8f73-e19439e113dd'
  'public/images/sections/11-benefits/icon-soporte.png' = 'https://www.figma.com/api/mcp/asset/d1842dc9-a9af-42a5-8971-b7a92641a553'
  'public/images/sections/11-benefits/icon-carga.png' = 'https://www.figma.com/api/mcp/asset/4dac895d-ab26-4945-b9f0-c9d21c4bfdf7'
  'public/images/sections/13-contact/caja-producto.png' = 'https://www.figma.com/api/mcp/asset/6c0ab152-a340-4d22-88e7-be7d5250f984'
  'public/images/sections/14-footer/logo-large.png' = 'https://www.figma.com/api/mcp/asset/aafa6c89-f434-44f5-a1db-c8f0cb3b4f4c'
  'public/images/sections/14-footer/logo-ccl.png' = 'https://www.figma.com/api/mcp/asset/e47a2fbe-9a95-42b8-beab-a207c1cc2efe'
  'public/images/sections/14-footer/icon-china.png' = 'https://www.figma.com/api/mcp/asset/e9c5639d-6198-4980-8238-a1f5634d2f28'
}

foreach ($entry in $map.GetEnumerator()) {
  $dir = Split-Path $entry.Key -Parent
  if ($dir) { New-Item -ItemType Directory -Force -Path $dir | Out-Null }
  Write-Host "Downloading $($entry.Key)..."
  Invoke-WebRequest -Uri $entry.Value -OutFile $entry.Key -UseBasicParsing
}

# Corregir extensiones SVG guardadas como PNG
Get-ChildItem -Recurse 'public/images' -File | ForEach-Object {
  $bytes = [byte[]](Get-Content $_.FullName -Encoding Byte -TotalCount 4)
  $isSvg = $bytes[0] -eq 0x3C -and $bytes[1] -eq 0x73 -and $bytes[2] -eq 0x76 -and $bytes[3] -eq 0x67
  if ($isSvg -and $_.Extension -ne '.svg') {
    $newPath = [System.IO.Path]::ChangeExtension($_.FullName, '.svg')
    Move-Item $_.FullName $newPath -Force
    Write-Host "Renamed to SVG: $newPath"
  }
}

# Eliminar assets duplicados/obsoletos en raíz
@('public/images/logo-text.png','public/images/logo-icon.png','public/images/play-icon.png',
  'public/images/sections/01-header/logo-text.png','public/images/sections/01-header/logo-icon.png',
  'public/images/sections/02-hero/card-ccl-ref.png','public/images/sections/02-hero/card-peru-ref.png',
  'public/images/sections/02-hero/card-sin-exp-ref.png') | ForEach-Object {
  if (Test-Path $_) { Remove-Item $_ -Force; Write-Host "Removed $_" }
}

Write-Host 'Done.'
