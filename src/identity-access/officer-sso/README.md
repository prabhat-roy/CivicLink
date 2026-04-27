# officer-sso

Officer SAML/OIDC SSO

Domain: ``identity-access`` Â· Language: rust Â· Port: 50021

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/identity-access/officer-sso.proto](../../../proto/identity-access/officer-sso.proto) â€” gRPC contract
- [helm/charts/officer-sso/](../../../helm/charts/officer-sso/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview