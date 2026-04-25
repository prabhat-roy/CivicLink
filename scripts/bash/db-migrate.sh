#!/usr/bin/env bash
# Apply Flyway migrations under databases/postgres/<schema>/ to the active cluster.
set -euo pipefail

PG_DSN=${PG_DSN:-postgres://civiclink:${PG_PASSWORD}@localhost:5432/civiclink}

for schema_dir in databases/postgres/*/; do
  schema=$(basename "$schema_dir")
  echo "::: migrating $schema"
  flyway \
    -url="jdbc:${PG_DSN#postgres://}" \
    -locations=filesystem:"$schema_dir" \
    -baselineOnMigrate=true \
    -schemas="$schema" \
    migrate
done
