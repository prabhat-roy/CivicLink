# certificate-service

Educational certificate issuance

**Domain:** ``education`` · **Language:** java · **Port:** 50183

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/education/certificate-service.proto](../../../proto/education/certificate-service.proto) — gRPC contract
- [helm/charts/certificate-service/](../../../helm/charts/certificate-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview