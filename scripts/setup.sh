#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

for bin in node pnpm forge cargo; do
  command -v "$bin" >/dev/null || { echo "missing: $bin"; exit 1; }
done

[ -f .env ] || cp .env.example .env
pnpm install
(cd contracts/evm && [ -d lib/forge-std ] || forge install foundry-rs/forge-std --no-git)
(cd contracts/cosmwasm && cargo fetch)
echo "setup done. run: make test"
