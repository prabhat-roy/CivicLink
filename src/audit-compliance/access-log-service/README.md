# access-log-service

Officer access log + RTI

Domain: ``audit-compliance`` Â· Language: go Â· Port: 50343

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/audit-compliance/access-log-service.proto](../../../proto/audit-compliance/access-log-service.proto) â€” gRPC contract
- [helm/charts/access-log-service/](../../../helm/charts/access-log-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview