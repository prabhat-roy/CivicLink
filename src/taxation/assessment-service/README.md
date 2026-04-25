# assessment-service

Tax assessment + scrutiny

**Domain:** ``taxation`` · **Language:** java · **Port:** 50122

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/taxation/assessment-service.proto](../../../proto/taxation/assessment-service.proto) — gRPC contract
- [helm/charts/assessment-service/](../../../helm/charts/assessment-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview