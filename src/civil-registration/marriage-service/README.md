# marriage-service

Marriage registration

**Domain:** ``civil-registration`` · **Language:** java · **Port:** 50062

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/civil-registration/marriage-service.proto](../../../proto/civil-registration/marriage-service.proto) — gRPC contract
- [helm/charts/marriage-service/](../../../helm/charts/marriage-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview