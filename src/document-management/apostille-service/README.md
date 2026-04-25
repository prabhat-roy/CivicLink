# apostille-service

Apostille for international use

**Domain:** ``document-management`` · **Language:** go · **Port:** 50263

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/document-management/apostille-service.proto](../../../proto/document-management/apostille-service.proto) — gRPC contract
- [helm/charts/apostille-service/](../../../helm/charts/apostille-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview