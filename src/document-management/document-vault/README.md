# document-vault

Encrypted document vault (MinIO + AES-256)

Domain: ``document-management`` Â· Language: go Â· Port: 50260

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/document-management/document-vault.proto](../../../proto/document-management/document-vault.proto) â€” gRPC contract
- [helm/charts/document-vault/](../../../helm/charts/document-vault/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview