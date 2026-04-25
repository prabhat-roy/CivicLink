# consent-service

OpenID4VC consent token issuer

**Domain:** ``inter-agency`` · **Language:** go · **Port:** 50280

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/inter-agency/consent-service.proto](../../../proto/inter-agency/consent-service.proto) — gRPC contract
- [helm/charts/consent-service/](../../../helm/charts/consent-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview