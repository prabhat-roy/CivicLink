# escalation-service

SLA-driven escalation

Domain: ``grievance`` Â· Language: go Â· Port: 50221

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/grievance/escalation-service.proto](../../../proto/grievance/escalation-service.proto) â€” gRPC contract
- [helm/charts/escalation-service/](../../../helm/charts/escalation-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview