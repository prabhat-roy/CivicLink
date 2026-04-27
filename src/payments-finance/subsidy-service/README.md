# subsidy-service

Subsidy disbursement

Domain: ``payments-finance`` Â· Language: go Â· Port: 50242

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/payments-finance/subsidy-service.proto](../../../proto/payments-finance/subsidy-service.proto) â€” gRPC contract
- [helm/charts/subsidy-service/](../../../helm/charts/subsidy-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview