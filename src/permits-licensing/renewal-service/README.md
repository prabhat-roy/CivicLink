# renewal-service

Renewal workflow + reminders

**Domain:** ``permits-licensing`` · **Language:** java · **Port:** 50082

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/permits-licensing/renewal-service.proto](../../../proto/permits-licensing/renewal-service.proto) — gRPC contract
- [helm/charts/renewal-service/](../../../helm/charts/renewal-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview