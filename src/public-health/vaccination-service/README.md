# vaccination-service

Immunisation registry

**Domain:** ``public-health`` · **Language:** java · **Port:** 50160

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/public-health/vaccination-service.proto](../../../proto/public-health/vaccination-service.proto) — gRPC contract
- [helm/charts/vaccination-service/](../../../helm/charts/vaccination-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview