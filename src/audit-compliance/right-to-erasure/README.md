# right-to-erasure

GDPR Article 17 erasure workflow

Domain: ``audit-compliance`` Â· Language: go Â· Port: 50342

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/audit-compliance/right-to-erasure.proto](../../../proto/audit-compliance/right-to-erasure.proto) â€” gRPC contract
- [helm/charts/right-to-erasure/](../../../helm/charts/right-to-erasure/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview