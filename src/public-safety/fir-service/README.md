# fir-service

First Information Report registration

**Domain:** ``public-safety`` · **Language:** java · **Port:** 50203

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/public-safety/fir-service.proto](../../../proto/public-safety/fir-service.proto) — gRPC contract
- [helm/charts/fir-service/](../../../helm/charts/fir-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview