#!/usr/bin/env bash
set -euo pipefail
echo "::: golangci-lint"          ; find src -name go.mod -print0 | xargs -0 -I{} bash -c 'cd "$(dirname "{}")" && golangci-lint run ./... || exit 1'
echo "::: ruff (python)"          ; ruff check src/
echo "::: hadolint"               ; find . -name Dockerfile -print0 | xargs -0 -n1 hadolint
echo "::: yamllint"               ; yamllint -c .yamllint manifests/ helm/ kubernetes/ networking/ messaging/ observability/
echo "::: spectral"               ; cd api-testing/spectral && npm run lint
