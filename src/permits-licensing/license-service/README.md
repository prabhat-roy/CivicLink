# license-service

Driving, professional, business licences

Domain: ``permits-licensing`` Â· Language: java Â· Port: 50081

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/permits-licensing/license-service.proto](../../../proto/permits-licensing/license-service.proto) â€” gRPC contract
- [helm/charts/license-service/](../../../helm/charts/license-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview