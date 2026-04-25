# citizen-bff

BFF for citizen portal (Next.js)

**Domain:** ``platform`` · **Language:** go · **Port:** 50001

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/platform/citizen-bff.proto](../../../proto/platform/citizen-bff.proto) — gRPC contract
- [helm/charts/citizen-bff/](../../../helm/charts/citizen-bff/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview