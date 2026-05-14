#!/usr/bin/env bash
set -euo pipefail

cd /home/mslepikas/.openclaw/workspace/websites/quantaa-net

echo "=== Quantaa.net Cloudflare deploy ==="
echo
echo "Path:"
pwd

echo
echo "Branch/status:"
git branch --show-current
git status --short

echo
echo "Current commit:"
git rev-parse --short HEAD

echo
echo "Version:"
grep -n "Current Version" -A3 VERSION.md || true

echo
echo "Pushing main to GitHub..."
git push origin main

echo
echo "Deploying current folder to Cloudflare Pages..."
npx wrangler pages deploy /home/mslepikas/.openclaw/workspace/websites/quantaa-net --project-name=quantaa-net --branch=main

echo
echo "Verifying live quantaa.net..."
curl -L -s "https://quantaa.net/?v=$(date +%s)" \
  | grep -i -E 'v0.3.0|AI Innovation in Compute|About Quantaa|Services|Technology|info@quantaa.net' \
  | head -50

echo
echo "Done. Open:"
echo "https://quantaa.net/?v=$(date +%s)"
