# permit-service

Construction, trade, environmental permits

Domain: ``permits-licensing`` Â· Language: java Â· Port: 50080

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/permits-licensing/permit-service.proto](../../../proto/permits-licensing/permit-service.proto) â€” gRPC contract
- [helm/charts/permit-service/](../../../helm/charts/permit-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview