# api-registry

Inter-agency API catalogue

**Domain:** ``inter-agency`` · **Language:** go · **Port:** 50282

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/inter-agency/api-registry.proto](../../../proto/inter-agency/api-registry.proto) — gRPC contract
- [helm/charts/api-registry/](../../../helm/charts/api-registry/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview