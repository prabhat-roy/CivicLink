# refund-service

Refund processing

**Domain:** ``taxation`` · **Language:** java · **Port:** 50123

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/taxation/refund-service.proto](../../../proto/taxation/refund-service.proto) — gRPC contract
- [helm/charts/refund-service/](../../../helm/charts/refund-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview