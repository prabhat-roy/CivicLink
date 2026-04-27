# grievance-service

NLP-classified grievances

Domain: ``grievance`` Â· Language: python Â· Port: 50220

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/grievance/grievance-service.proto](../../../proto/grievance/grievance-service.proto) â€” gRPC contract
- [helm/charts/grievance-service/](../../../helm/charts/grievance-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview