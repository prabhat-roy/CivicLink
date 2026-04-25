# officer-bff

BFF for officer dashboard (React)

**Domain:** ``platform`` · **Language:** go · **Port:** 50002

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/platform/officer-bff.proto](../../../proto/platform/officer-bff.proto) — gRPC contract
- [helm/charts/officer-bff/](../../../helm/charts/officer-bff/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview