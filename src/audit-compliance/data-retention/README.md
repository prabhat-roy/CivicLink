# data-retention

Retention policy enforcement

**Domain:** ``audit-compliance`` · **Language:** go · **Port:** 50341

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/audit-compliance/data-retention.proto](../../../proto/audit-compliance/data-retention.proto) — gRPC contract
- [helm/charts/data-retention/](../../../helm/charts/data-retention/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview