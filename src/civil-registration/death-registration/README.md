# death-registration

Death certificate issuance

**Domain:** ``civil-registration`` · **Language:** java · **Port:** 50061

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/civil-registration/death-registration.proto](../../../proto/civil-registration/death-registration.proto) — gRPC contract
- [helm/charts/death-registration/](../../../helm/charts/death-registration/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview