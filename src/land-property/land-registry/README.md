# land-registry

Land records (PostGIS)

**Domain:** ``land-property`` · **Language:** java · **Port:** 50100

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/land-property/land-registry.proto](../../../proto/land-property/land-registry.proto) — gRPC contract
- [helm/charts/land-registry/](../../../helm/charts/land-registry/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview