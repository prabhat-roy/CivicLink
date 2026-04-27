# notification-orchestrator

Multi-channel routing + templates

Domain: ``notifications`` Â· Language: go Â· Port: 50320

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/notifications/notification-orchestrator.proto](../../../proto/notifications/notification-orchestrator.proto) â€” gRPC contract
- [helm/charts/notification-orchestrator/](../../../helm/charts/notification-orchestrator/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview