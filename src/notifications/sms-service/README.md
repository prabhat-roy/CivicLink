# sms-service

SMS dispatch

**Domain:** ``notifications`` · **Language:** go · **Port:** 50321

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/notifications/sms-service.proto](../../../proto/notifications/sms-service.proto) — gRPC contract
- [helm/charts/sms-service/](../../../helm/charts/sms-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview