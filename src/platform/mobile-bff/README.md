# mobile-bff

BFF for citizen mobile app (Flutter)

**Domain:** ``platform`` · **Language:** go · **Port:** 50003

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/platform/mobile-bff.proto](../../../proto/platform/mobile-bff.proto) — gRPC contract
- [helm/charts/mobile-bff/](../../../helm/charts/mobile-bff/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview