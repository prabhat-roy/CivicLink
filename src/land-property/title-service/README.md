# title-service

Title search + encumbrance

**Domain:** ``land-property`` · **Language:** java · **Port:** 50103

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/land-property/title-service.proto](../../../proto/land-property/title-service.proto) — gRPC contract
- [helm/charts/title-service/](../../../helm/charts/title-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview