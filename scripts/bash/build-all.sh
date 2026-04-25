#!/usr/bin/env bash
# Build every service container in the registry, optionally filtered by language.
# Usage: scripts/bash/build-all.sh [go|java|kotlin|python|node|rust]
set -euo pipefail

LANG_FILTER="${1:-}"

REGISTRY=${REGISTRY:-harbor.civiclink.internal}
TAG=${TAG:-latest}

jq_filter='.[]'
[ -n "$LANG_FILTER" ] && jq_filter=".[] | select(.L==\"$LANG_FILTER\")"

while IFS= read -r row; do
  domain=$(echo "$row" | jq -r '.D')
  name=$(echo "$row" | jq -r '.N')
  echo "::: building $domain/$name"
  ( cd "src/$domain/$name" && docker build -t "$REGISTRY/civiclink/$name:$TAG" . )
done < <(jq -c "$jq_filter" .services.json)
