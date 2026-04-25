# email-service

Email dispatch

**Domain:** ``notifications`` · **Language:** node · **Port:** 50322

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/notifications/email-service.proto](../../../proto/notifications/email-service.proto) — gRPC contract
- [helm/charts/email-service/](../../../helm/charts/email-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview