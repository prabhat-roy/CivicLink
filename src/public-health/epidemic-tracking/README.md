# epidemic-tracking

Disease surveillance + alerting

**Domain:** ``public-health`` · **Language:** python · **Port:** 50162

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/public-health/epidemic-tracking.proto](../../../proto/public-health/epidemic-tracking.proto) — gRPC contract
- [helm/charts/epidemic-tracking/](../../../helm/charts/epidemic-tracking/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview