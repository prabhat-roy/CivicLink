# treasury-service

Government treasury

**Domain:** ``payments-finance`` · **Language:** go · **Port:** 50241

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/payments-finance/treasury-service.proto](../../../proto/payments-finance/treasury-service.proto) — gRPC contract
- [helm/charts/treasury-service/](../../../helm/charts/treasury-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview