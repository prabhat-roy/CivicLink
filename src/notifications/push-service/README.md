# push-service

APNs/FCM push notifications

Domain: ``notifications`` Â· Language: go Â· Port: 50323

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/notifications/push-service.proto](../../../proto/notifications/push-service.proto) â€” gRPC contract
- [helm/charts/push-service/](../../../helm/charts/push-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview