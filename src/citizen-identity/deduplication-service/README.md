# deduplication-service

Citizen deduplication via biometric+demographic match

Domain: ``citizen-identity`` Â· Language: java Â· Port: 50043

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/citizen-identity/deduplication-service.proto](../../../proto/citizen-identity/deduplication-service.proto) â€” gRPC contract
- [helm/charts/deduplication-service/](../../../helm/charts/deduplication-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview