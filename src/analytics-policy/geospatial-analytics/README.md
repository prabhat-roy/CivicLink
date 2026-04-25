# geospatial-analytics

GIS / satellite imagery analytics

**Domain:** ``analytics-policy`` · **Language:** python · **Port:** 50302

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/analytics-policy/geospatial-analytics.proto](../../../proto/analytics-policy/geospatial-analytics.proto) — gRPC contract
- [helm/charts/geospatial-analytics/](../../../helm/charts/geospatial-analytics/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview