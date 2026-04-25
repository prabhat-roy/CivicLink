# incident-reporting

Citizen incident reports

**Domain:** ``public-safety`` · **Language:** java · **Port:** 50200

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/public-safety/incident-reporting.proto](../../../proto/public-safety/incident-reporting.proto) — gRPC contract
- [helm/charts/incident-reporting/](../../../helm/charts/incident-reporting/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview