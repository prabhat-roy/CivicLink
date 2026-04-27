# health-record

Public health EHR (FHIR)

Domain: ``public-health`` Â· Language: java Â· Port: 50161

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/public-health/health-record.proto](../../../proto/public-health/health-record.proto) â€” gRPC contract
- [helm/charts/health-record/](../../../helm/charts/health-record/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview