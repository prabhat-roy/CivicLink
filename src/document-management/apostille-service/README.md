# apostille-service

Apostille for international use

Domain: ``document-management`` Â· Language: go Â· Port: 50263

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/document-management/apostille-service.proto](../../../proto/document-management/apostille-service.proto) â€” gRPC contract
- [helm/charts/apostille-service/](../../../helm/charts/apostille-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview