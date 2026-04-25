# push-service

APNs/FCM push notifications

**Domain:** ``notifications`` · **Language:** go · **Port:** 50323

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/notifications/push-service.proto](../../../proto/notifications/push-service.proto) — gRPC contract
- [helm/charts/push-service/](../../../helm/charts/push-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview