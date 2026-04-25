# access-log-service

Officer access log + RTI

**Domain:** ``audit-compliance`` · **Language:** go · **Port:** 50343

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/audit-compliance/access-log-service.proto](../../../proto/audit-compliance/access-log-service.proto) — gRPC contract
- [helm/charts/access-log-service/](../../../helm/charts/access-log-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview