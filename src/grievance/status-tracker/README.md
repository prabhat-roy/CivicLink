# status-tracker

Citizen status tracking

Domain: ``grievance`` Â· Language: node Â· Port: 50222

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/grievance/status-tracker.proto](../../../proto/grievance/status-tracker.proto) â€” gRPC contract
- [helm/charts/status-tracker/](../../../helm/charts/status-tracker/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview