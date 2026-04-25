# case-management

Case officer workflow

**Domain:** ``social-welfare`` · **Language:** java · **Port:** 50143

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/social-welfare/case-management.proto](../../../proto/social-welfare/case-management.proto) — gRPC contract
- [helm/charts/case-management/](../../../helm/charts/case-management/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview