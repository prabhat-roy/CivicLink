# data-retention

Retention policy enforcement

Domain: ``audit-compliance`` Â· Language: go Â· Port: 50341

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/audit-compliance/data-retention.proto](../../../proto/audit-compliance/data-retention.proto) â€” gRPC contract
- [helm/charts/data-retention/](../../../helm/charts/data-retention/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview