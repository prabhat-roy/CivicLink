# disbursement-service

DBT disbursement to bank/wallet

**Domain:** ``social-welfare`` · **Language:** go · **Port:** 50142

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/social-welfare/disbursement-service.proto](../../../proto/social-welfare/disbursement-service.proto) — gRPC contract
- [helm/charts/disbursement-service/](../../../helm/charts/disbursement-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview