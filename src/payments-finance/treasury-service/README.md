# treasury-service

Government treasury

Domain: ``payments-finance`` Â· Language: go Â· Port: 50241

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/payments-finance/treasury-service.proto](../../../proto/payments-finance/treasury-service.proto) â€” gRPC contract
- [helm/charts/treasury-service/](../../../helm/charts/treasury-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview