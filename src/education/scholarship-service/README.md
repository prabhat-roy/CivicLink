# scholarship-service

Scholarship enrolment + disbursement

**Domain:** ``education`` · **Language:** java · **Port:** 50181

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/education/scholarship-service.proto](../../../proto/education/scholarship-service.proto) — gRPC contract
- [helm/charts/scholarship-service/](../../../helm/charts/scholarship-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview