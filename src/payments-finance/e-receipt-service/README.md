# e-receipt-service

Digital receipt issuance

**Domain:** ``payments-finance`` · **Language:** go · **Port:** 50243

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/payments-finance/e-receipt-service.proto](../../../proto/payments-finance/e-receipt-service.proto) — gRPC contract
- [helm/charts/e-receipt-service/](../../../helm/charts/e-receipt-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview