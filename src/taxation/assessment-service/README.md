# assessment-service

Tax assessment + scrutiny

Domain: ``taxation`` Â· Language: java Â· Port: 50122

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/taxation/assessment-service.proto](../../../proto/taxation/assessment-service.proto) â€” gRPC contract
- [helm/charts/assessment-service/](../../../helm/charts/assessment-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview