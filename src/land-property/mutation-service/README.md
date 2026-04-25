# mutation-service

Land record mutation workflow

**Domain:** ``land-property`` · **Language:** java · **Port:** 50102

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/land-property/mutation-service.proto](../../../proto/land-property/mutation-service.proto) — gRPC contract
- [helm/charts/mutation-service/](../../../helm/charts/mutation-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview