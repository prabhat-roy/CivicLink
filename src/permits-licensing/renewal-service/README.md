# renewal-service

Renewal workflow + reminders

Domain: ``permits-licensing`` Â· Language: java Â· Port: 50082

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/permits-licensing/renewal-service.proto](../../../proto/permits-licensing/renewal-service.proto) â€” gRPC contract
- [helm/charts/renewal-service/](../../../helm/charts/renewal-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview