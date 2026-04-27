# in-app-service

In-app message inbox

Domain: ``notifications`` Â· Language: go Â· Port: 50324

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/notifications/in-app-service.proto](../../../proto/notifications/in-app-service.proto) â€” gRPC contract
- [helm/charts/in-app-service/](../../../helm/charts/in-app-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview