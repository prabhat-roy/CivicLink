# name-change-service

Legal name change workflow

**Domain:** ``civil-registration`` · **Language:** java · **Port:** 50063

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/civil-registration/name-change-service.proto](../../../proto/civil-registration/name-change-service.proto) — gRPC contract
- [helm/charts/name-change-service/](../../../helm/charts/name-change-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview