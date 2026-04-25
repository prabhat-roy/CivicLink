# inspection-scheduler

Inspection scheduling + assignment

**Domain:** ``permits-licensing`` · **Language:** go · **Port:** 50083

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/permits-licensing/inspection-scheduler.proto](../../../proto/permits-licensing/inspection-scheduler.proto) — gRPC contract
- [helm/charts/inspection-scheduler/](../../../helm/charts/inspection-scheduler/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview