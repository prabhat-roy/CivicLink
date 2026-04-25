# payment-gateway

Multi-rail payment routing

**Domain:** ``payments-finance`` · **Language:** go · **Port:** 50240

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/payments-finance/payment-gateway.proto](../../../proto/payments-finance/payment-gateway.proto) — gRPC contract
- [helm/charts/payment-gateway/](../../../helm/charts/payment-gateway/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview