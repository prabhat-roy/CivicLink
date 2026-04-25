# mfa-service

Multi-factor auth (TOTP, WebAuthn)

**Domain:** ``identity-access`` · **Language:** go · **Port:** 50023

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/identity-access/mfa-service.proto](../../../proto/identity-access/mfa-service.proto) — gRPC contract
- [helm/charts/mfa-service/](../../../helm/charts/mfa-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview