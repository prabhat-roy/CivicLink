# emergency-service

Emergency 112 routing

Domain: ``public-safety`` Â· Language: go Â· Port: 50201

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/public-safety/emergency-service.proto](../../../proto/public-safety/emergency-service.proto) â€” gRPC contract
- [helm/charts/emergency-service/](../../../helm/charts/emergency-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview