# health-record

Public health EHR (FHIR)

**Domain:** ``public-health`` · **Language:** java · **Port:** 50161

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/public-health/health-record.proto](../../../proto/public-health/health-record.proto) — gRPC contract
- [helm/charts/health-record/](../../../helm/charts/health-record/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview