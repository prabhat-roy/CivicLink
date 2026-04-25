# benefit-service

Benefit enrolment + lifecycle

**Domain:** ``social-welfare`` · **Language:** java · **Port:** 50140

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/social-welfare/benefit-service.proto](../../../proto/social-welfare/benefit-service.proto) — gRPC contract
- [helm/charts/benefit-service/](../../../helm/charts/benefit-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview