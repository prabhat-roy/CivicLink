# sms-service

SMS dispatch

Domain: ``notifications`` Â· Language: go Â· Port: 50321

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/notifications/sms-service.proto](../../../proto/notifications/sms-service.proto) â€” gRPC contract
- [helm/charts/sms-service/](../../../helm/charts/sms-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview