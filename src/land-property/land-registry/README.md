# land-registry

Land records (PostGIS)

Domain: ``land-property`` Â· Language: java Â· Port: 50100

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/land-property/land-registry.proto](../../../proto/land-property/land-registry.proto) â€” gRPC contract
- [helm/charts/land-registry/](../../../helm/charts/land-registry/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview