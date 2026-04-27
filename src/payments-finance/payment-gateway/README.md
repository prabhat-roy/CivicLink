# payment-gateway

Multi-rail payment routing

Domain: ``payments-finance`` Â· Language: go Â· Port: 50240

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/payments-finance/payment-gateway.proto](../../../proto/payments-finance/payment-gateway.proto) â€” gRPC contract
- [helm/charts/payment-gateway/](../../../helm/charts/payment-gateway/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview