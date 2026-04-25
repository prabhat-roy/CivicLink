# survey-service

Citizen feedback surveys

**Domain:** ``grievance`` · **Language:** node · **Port:** 50223

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/grievance/survey-service.proto](../../../proto/grievance/survey-service.proto) — gRPC contract
- [helm/charts/survey-service/](../../../helm/charts/survey-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview