# birth-registration

Birth certificate issuance

**Domain:** ``civil-registration`` · **Language:** java · **Port:** 50060

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/civil-registration/birth-registration.proto](../../../proto/civil-registration/birth-registration.proto) — gRPC contract
- [helm/charts/birth-registration/](../../../helm/charts/birth-registration/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview