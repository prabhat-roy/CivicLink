# document-vault

Encrypted document vault (MinIO + AES-256)

**Domain:** ``document-management`` · **Language:** go · **Port:** 50260

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/document-management/document-vault.proto](../../../proto/document-management/document-vault.proto) — gRPC contract
- [helm/charts/document-vault/](../../../helm/charts/document-vault/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview