# deduplication-service

Citizen deduplication via biometric+demographic match

**Domain:** ``citizen-identity`` · **Language:** java · **Port:** 50043

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/citizen-identity/deduplication-service.proto](../../../proto/citizen-identity/deduplication-service.proto) — gRPC contract
- [helm/charts/deduplication-service/](../../../helm/charts/deduplication-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview