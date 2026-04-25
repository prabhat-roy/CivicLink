# citizen-sso

Citizen OIDC SSO

**Domain:** ``identity-access`` · **Language:** rust · **Port:** 50022

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/identity-access/citizen-sso.proto](../../../proto/identity-access/citizen-sso.proto) — gRPC contract
- [helm/charts/citizen-sso/](../../../helm/charts/citizen-sso/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview