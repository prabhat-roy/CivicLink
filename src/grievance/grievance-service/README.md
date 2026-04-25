# grievance-service

NLP-classified grievances

**Domain:** ``grievance`` · **Language:** python · **Port:** 50220

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/grievance/grievance-service.proto](../../../proto/grievance/grievance-service.proto) — gRPC contract
- [helm/charts/grievance-service/](../../../helm/charts/grievance-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview