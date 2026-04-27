# email-service

Email dispatch

Domain: ``notifications`` Â· Language: node Â· Port: 50322

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/notifications/email-service.proto](../../../proto/notifications/email-service.proto) â€” gRPC contract
- [helm/charts/email-service/](../../../helm/charts/email-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview