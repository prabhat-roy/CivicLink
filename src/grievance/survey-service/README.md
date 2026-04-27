# survey-service

Citizen feedback surveys

Domain: ``grievance`` Â· Language: node Â· Port: 50223

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/grievance/survey-service.proto](../../../proto/grievance/survey-service.proto) â€” gRPC contract
- [helm/charts/survey-service/](../../../helm/charts/survey-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview