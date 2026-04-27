# vaccination-service

Immunisation registry

Domain: ``public-health`` Â· Language: java Â· Port: 50160

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/public-health/vaccination-service.proto](../../../proto/public-health/vaccination-service.proto) â€” gRPC contract
- [helm/charts/vaccination-service/](../../../helm/charts/vaccination-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview