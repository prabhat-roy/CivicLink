# mobile-bff

BFF for citizen mobile app (Flutter)

Domain: ``platform`` Â· Language: go Â· Port: 50003

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/platform/mobile-bff.proto](../../../proto/platform/mobile-bff.proto) â€” gRPC contract
- [helm/charts/mobile-bff/](../../../helm/charts/mobile-bff/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview