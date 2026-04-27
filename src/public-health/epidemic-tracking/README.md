# epidemic-tracking

Disease surveillance + alerting

Domain: ``public-health`` Â· Language: python Â· Port: 50162

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/public-health/epidemic-tracking.proto](../../../proto/public-health/epidemic-tracking.proto) â€” gRPC contract
- [helm/charts/epidemic-tracking/](../../../helm/charts/epidemic-tracking/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview