# national-id-service

National ID issuance + lifecycle

**Domain:** ``citizen-identity`` · **Language:** java · **Port:** 50040

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/citizen-identity/national-id-service.proto](../../../proto/citizen-identity/national-id-service.proto) — gRPC contract
- [helm/charts/national-id-service/](../../../helm/charts/national-id-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview