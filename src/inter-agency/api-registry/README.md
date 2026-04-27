# api-registry

Inter-agency API catalogue

Domain: ``inter-agency`` Â· Language: go Â· Port: 50282

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/inter-agency/api-registry.proto](../../../proto/inter-agency/api-registry.proto) â€” gRPC contract
- [helm/charts/api-registry/](../../../helm/charts/api-registry/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview