# consent-service

OpenID4VC consent token issuer

Domain: ``inter-agency`` Â· Language: go Â· Port: 50280

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/inter-agency/consent-service.proto](../../../proto/inter-agency/consent-service.proto) â€” gRPC contract
- [helm/charts/consent-service/](../../../helm/charts/consent-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview