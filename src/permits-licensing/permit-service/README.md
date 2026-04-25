# permit-service

Construction, trade, environmental permits

**Domain:** ``permits-licensing`` · **Language:** java · **Port:** 50080

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/permits-licensing/permit-service.proto](../../../proto/permits-licensing/permit-service.proto) — gRPC contract
- [helm/charts/permit-service/](../../../helm/charts/permit-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview