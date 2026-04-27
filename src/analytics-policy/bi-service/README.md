# bi-service

BI on Apache Superset

Domain: ``analytics-policy`` Â· Language: python Â· Port: 50303

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/analytics-policy/bi-service.proto](../../../proto/analytics-policy/bi-service.proto) â€” gRPC contract
- [helm/charts/bi-service/](../../../helm/charts/bi-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview