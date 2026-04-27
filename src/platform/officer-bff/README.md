# officer-bff

BFF for officer dashboard (React)

Domain: ``platform`` Â· Language: go Â· Port: 50002

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/platform/officer-bff.proto](../../../proto/platform/officer-bff.proto) â€” gRPC contract
- [helm/charts/officer-bff/](../../../helm/charts/officer-bff/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview