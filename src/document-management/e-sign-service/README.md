# e-sign-service

Legally-binding e-signature

Domain: ``document-management`` Â· Language: kotlin Â· Port: 50261

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/document-management/e-sign-service.proto](../../../proto/document-management/e-sign-service.proto) â€” gRPC contract
- [helm/charts/e-sign-service/](../../../helm/charts/e-sign-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview