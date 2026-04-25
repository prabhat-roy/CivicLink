# auth-service

FIDO2/WebAuthn passwordless auth

**Domain:** ``identity-access`` · **Language:** rust · **Port:** 50020

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/identity-access/auth-service.proto](../../../proto/identity-access/auth-service.proto) — gRPC contract
- [helm/charts/auth-service/](../../../helm/charts/auth-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview