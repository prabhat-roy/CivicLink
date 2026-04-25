# subsidy-service

Subsidy disbursement

**Domain:** ``payments-finance`` · **Language:** go · **Port:** 50242

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/payments-finance/subsidy-service.proto](../../../proto/payments-finance/subsidy-service.proto) — gRPC contract
- [helm/charts/subsidy-service/](../../../helm/charts/subsidy-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview