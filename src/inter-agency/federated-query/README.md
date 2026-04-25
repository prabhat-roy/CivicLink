# federated-query

Cross-agency federated query

**Domain:** ``inter-agency`` · **Language:** go · **Port:** 50283

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/inter-agency/federated-query.proto](../../../proto/inter-agency/federated-query.proto) — gRPC contract
- [helm/charts/federated-query/](../../../helm/charts/federated-query/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview