# tax-filing

Tax return filing

**Domain:** ``taxation`` · **Language:** java · **Port:** 50121

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/taxation/tax-filing.proto](../../../proto/taxation/tax-filing.proto) — gRPC contract
- [helm/charts/tax-filing/](../../../helm/charts/tax-filing/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview