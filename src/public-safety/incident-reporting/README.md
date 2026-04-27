# incident-reporting

Citizen incident reports

Domain: ``public-safety`` Â· Language: java Â· Port: 50200

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/public-safety/incident-reporting.proto](../../../proto/public-safety/incident-reporting.proto) â€” gRPC contract
- [helm/charts/incident-reporting/](../../../helm/charts/incident-reporting/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview