# mfa-service

Multi-factor auth (TOTP, WebAuthn)

Domain: ``identity-access`` Â· Language: go Â· Port: 50023

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/identity-access/mfa-service.proto](../../../proto/identity-access/mfa-service.proto) â€” gRPC contract
- [helm/charts/mfa-service/](../../../helm/charts/mfa-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview