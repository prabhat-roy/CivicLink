# citizen-sso

Citizen OIDC SSO

Domain: ``identity-access`` Â· Language: rust Â· Port: 50022

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/identity-access/citizen-sso.proto](../../../proto/identity-access/citizen-sso.proto) â€” gRPC contract
- [helm/charts/citizen-sso/](../../../helm/charts/citizen-sso/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview