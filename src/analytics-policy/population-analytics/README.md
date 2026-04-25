# population-analytics

Demographic + programme analytics

**Domain:** ``analytics-policy`` · **Language:** python · **Port:** 50300

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/analytics-policy/population-analytics.proto](../../../proto/analytics-policy/population-analytics.proto) — gRPC contract
- [helm/charts/population-analytics/](../../../helm/charts/population-analytics/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview