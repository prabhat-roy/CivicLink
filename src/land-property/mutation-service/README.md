# mutation-service

Land record mutation workflow

Domain: ``land-property`` Â· Language: java Â· Port: 50102

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/land-property/mutation-service.proto](../../../proto/land-property/mutation-service.proto) â€” gRPC contract
- [helm/charts/mutation-service/](../../../helm/charts/mutation-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview