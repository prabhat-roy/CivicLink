# attestation-service

Document attestation

**Domain:** ``document-management`` · **Language:** go · **Port:** 50262

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/document-management/attestation-service.proto](../../../proto/document-management/attestation-service.proto) — gRPC contract
- [helm/charts/attestation-service/](../../../helm/charts/attestation-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview