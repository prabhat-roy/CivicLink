# benefit-service

Benefit enrolment + lifecycle

Domain: ``social-welfare`` Â· Language: java Â· Port: 50140

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/social-welfare/benefit-service.proto](../../../proto/social-welfare/benefit-service.proto) â€” gRPC contract
- [helm/charts/benefit-service/](../../../helm/charts/benefit-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview