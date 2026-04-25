# clinic-service

Public clinic management

**Domain:** ``public-health`` · **Language:** java · **Port:** 50163

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/public-health/clinic-service.proto](../../../proto/public-health/clinic-service.proto) — gRPC contract
- [helm/charts/clinic-service/](../../../helm/charts/clinic-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview