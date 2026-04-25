# license-service

Driving, professional, business licences

**Domain:** ``permits-licensing`` · **Language:** java · **Port:** 50081

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/permits-licensing/license-service.proto](../../../proto/permits-licensing/license-service.proto) — gRPC contract
- [helm/charts/license-service/](../../../helm/charts/license-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview