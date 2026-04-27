# national-id-service

National ID issuance + lifecycle

Domain: ``citizen-identity`` Â· Language: java Â· Port: 50040

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/citizen-identity/national-id-service.proto](../../../proto/citizen-identity/national-id-service.proto) â€” gRPC contract
- [helm/charts/national-id-service/](../../../helm/charts/national-id-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview