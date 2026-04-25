# emergency-service

Emergency 112 routing

**Domain:** ``public-safety`` · **Language:** go · **Port:** 50201

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/public-safety/emergency-service.proto](../../../proto/public-safety/emergency-service.proto) — gRPC contract
- [helm/charts/emergency-service/](../../../helm/charts/emergency-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview