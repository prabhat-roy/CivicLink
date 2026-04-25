# in-app-service

In-app message inbox

**Domain:** ``notifications`` · **Language:** go · **Port:** 50324

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/notifications/in-app-service.proto](../../../proto/notifications/in-app-service.proto) — gRPC contract
- [helm/charts/in-app-service/](../../../helm/charts/in-app-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview