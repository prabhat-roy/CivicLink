# officer-sso

Officer SAML/OIDC SSO

**Domain:** ``identity-access`` · **Language:** rust · **Port:** 50021

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/identity-access/officer-sso.proto](../../../proto/identity-access/officer-sso.proto) — gRPC contract
- [helm/charts/officer-sso/](../../../helm/charts/officer-sso/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview