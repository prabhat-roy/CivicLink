# population-analytics

Demographic + programme analytics

Domain: ``analytics-policy`` Â· Language: python Â· Port: 50300

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/analytics-policy/population-analytics.proto](../../../proto/analytics-policy/population-analytics.proto) â€” gRPC contract
- [helm/charts/population-analytics/](../../../helm/charts/population-analytics/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview