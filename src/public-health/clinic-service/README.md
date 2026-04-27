# clinic-service

Public clinic management

Domain: ``public-health`` Â· Language: java Â· Port: 50163

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/public-health/clinic-service.proto](../../../proto/public-health/clinic-service.proto) â€” gRPC contract
- [helm/charts/clinic-service/](../../../helm/charts/clinic-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview