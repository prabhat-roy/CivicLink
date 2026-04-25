# bi-service

BI on Apache Superset

**Domain:** ``analytics-policy`` · **Language:** python · **Port:** 50303

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/analytics-policy/bi-service.proto](../../../proto/analytics-policy/bi-service.proto) — gRPC contract
- [helm/charts/bi-service/](../../../helm/charts/bi-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview