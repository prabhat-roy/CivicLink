# audit-trail

Immutable Kafka-backed audit log

**Domain:** ``audit-compliance`` · **Language:** go · **Port:** 50340

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/audit-compliance/audit-trail.proto](../../../proto/audit-compliance/audit-trail.proto) — gRPC contract
- [helm/charts/audit-trail/](../../../helm/charts/audit-trail/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview