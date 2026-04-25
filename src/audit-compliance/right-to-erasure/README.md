# right-to-erasure

GDPR Article 17 erasure workflow

**Domain:** ``audit-compliance`` · **Language:** go · **Port:** 50342

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/audit-compliance/right-to-erasure.proto](../../../proto/audit-compliance/right-to-erasure.proto) — gRPC contract
- [helm/charts/right-to-erasure/](../../../helm/charts/right-to-erasure/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview