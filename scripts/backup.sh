#!/usr/bin/env bash
set -euo pipefail
NS="${1:-civiclink}"
TS=$(date -u +%Y%m%dT%H%M%S)
velero backup create "civiclink-$TS" --include-namespaces "$NS" --wait
