# marriage-service

Marriage registration

Domain: ``civil-registration`` Â· Language: java Â· Port: 50062

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/civil-registration/marriage-service.proto](../../../proto/civil-registration/marriage-service.proto) â€” gRPC contract
- [helm/charts/marriage-service/](../../../helm/charts/marriage-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview