# ivr-service

Voice IVR flow

**Domain:** ``notifications`` · **Language:** node · **Port:** 50325

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/notifications/ivr-service.proto](../../../proto/notifications/ivr-service.proto) — gRPC contract
- [helm/charts/ivr-service/](../../../helm/charts/ivr-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview