# e-receipt-service

Digital receipt issuance

Domain: ``payments-finance`` Â· Language: go Â· Port: 50243

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/payments-finance/e-receipt-service.proto](../../../proto/payments-finance/e-receipt-service.proto) â€” gRPC contract
- [helm/charts/e-receipt-service/](../../../helm/charts/e-receipt-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview