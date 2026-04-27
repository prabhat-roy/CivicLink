# citizen-bff

BFF for citizen portal (Next.js)

Domain: ``platform`` Â· Language: go Â· Port: 50001

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/platform/citizen-bff.proto](../../../proto/platform/citizen-bff.proto) â€” gRPC contract
- [helm/charts/citizen-bff/](../../../helm/charts/citizen-bff/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview