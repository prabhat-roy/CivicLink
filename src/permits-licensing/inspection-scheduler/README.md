# inspection-scheduler

Inspection scheduling + assignment

Domain: ``permits-licensing`` Â· Language: go Â· Port: 50083

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/permits-licensing/inspection-scheduler.proto](../../../proto/permits-licensing/inspection-scheduler.proto) â€” gRPC contract
- [helm/charts/inspection-scheduler/](../../../helm/charts/inspection-scheduler/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview