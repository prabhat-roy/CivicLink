# refund-service

Refund processing

Domain: ``taxation`` Â· Language: java Â· Port: 50123

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/taxation/refund-service.proto](../../../proto/taxation/refund-service.proto) â€” gRPC contract
- [helm/charts/refund-service/](../../../helm/charts/refund-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview