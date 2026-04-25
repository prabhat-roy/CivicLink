# eligibility-engine

Rules+ML eligibility determination

**Domain:** ``social-welfare`` · **Language:** python · **Port:** 50141

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/social-welfare/eligibility-engine.proto](../../../proto/social-welfare/eligibility-engine.proto) — gRPC contract
- [helm/charts/eligibility-engine/](../../../helm/charts/eligibility-engine/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview