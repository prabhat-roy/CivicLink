# ivr-service

Voice IVR flow

Domain: ``notifications`` Â· Language: node Â· Port: 50325

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/notifications/ivr-service.proto](../../../proto/notifications/ivr-service.proto) â€” gRPC contract
- [helm/charts/ivr-service/](../../../helm/charts/ivr-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview