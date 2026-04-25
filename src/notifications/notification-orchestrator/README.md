# notification-orchestrator

Multi-channel routing + templates

**Domain:** ``notifications`` · **Language:** go · **Port:** 50320

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/notifications/notification-orchestrator.proto](../../../proto/notifications/notification-orchestrator.proto) — gRPC contract
- [helm/charts/notification-orchestrator/](../../../helm/charts/notification-orchestrator/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview