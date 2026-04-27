# federated-query

Cross-agency federated query

Domain: ``inter-agency`` Â· Language: go Â· Port: 50283

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/inter-agency/federated-query.proto](../../../proto/inter-agency/federated-query.proto) â€” gRPC contract
- [helm/charts/federated-query/](../../../helm/charts/federated-query/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview