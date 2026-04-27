# geospatial-analytics

GIS / satellite imagery analytics

Domain: ``analytics-policy`` Â· Language: python Â· Port: 50302

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/analytics-policy/geospatial-analytics.proto](../../../proto/analytics-policy/geospatial-analytics.proto) â€” gRPC contract
- [helm/charts/geospatial-analytics/](../../../helm/charts/geospatial-analytics/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview