# attestation-service

Document attestation

Domain: ``document-management`` Â· Language: go Â· Port: 50262

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/document-management/attestation-service.proto](../../../proto/document-management/attestation-service.proto) â€” gRPC contract
- [helm/charts/attestation-service/](../../../helm/charts/attestation-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview