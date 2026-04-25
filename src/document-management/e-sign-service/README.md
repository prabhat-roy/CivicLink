# e-sign-service

Legally-binding e-signature

**Domain:** ``document-management`` · **Language:** kotlin · **Port:** 50261

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/document-management/e-sign-service.proto](../../../proto/document-management/e-sign-service.proto) — gRPC contract
- [helm/charts/e-sign-service/](../../../helm/charts/e-sign-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview