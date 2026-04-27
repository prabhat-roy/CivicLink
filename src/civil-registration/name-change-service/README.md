# name-change-service

Legal name change workflow

Domain: ``civil-registration`` Â· Language: java Â· Port: 50063

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/civil-registration/name-change-service.proto](../../../proto/civil-registration/name-change-service.proto) â€” gRPC contract
- [helm/charts/name-change-service/](../../../helm/charts/name-change-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview