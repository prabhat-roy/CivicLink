# scholarship-service

Scholarship enrolment + disbursement

Domain: ``education`` Â· Language: java Â· Port: 50181

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/education/scholarship-service.proto](../../../proto/education/scholarship-service.proto) â€” gRPC contract
- [helm/charts/scholarship-service/](../../../helm/charts/scholarship-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview