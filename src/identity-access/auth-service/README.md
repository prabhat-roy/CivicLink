# auth-service

FIDO2/WebAuthn passwordless auth

Domain: ``identity-access`` Â· Language: rust Â· Port: 50020

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/identity-access/auth-service.proto](../../../proto/identity-access/auth-service.proto) â€” gRPC contract
- [helm/charts/auth-service/](../../../helm/charts/auth-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview