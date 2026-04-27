# disbursement-service

DBT disbursement to bank/wallet

Domain: ``social-welfare`` Â· Language: go Â· Port: 50142

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/social-welfare/disbursement-service.proto](../../../proto/social-welfare/disbursement-service.proto) â€” gRPC contract
- [helm/charts/disbursement-service/](../../../helm/charts/disbursement-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview