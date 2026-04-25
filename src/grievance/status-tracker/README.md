# status-tracker

Citizen status tracking

**Domain:** ``grievance`` · **Language:** node · **Port:** 50222

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/grievance/status-tracker.proto](../../../proto/grievance/status-tracker.proto) — gRPC contract
- [helm/charts/status-tracker/](../../../helm/charts/status-tracker/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview