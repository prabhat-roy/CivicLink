# fir-service

First Information Report registration

Domain: ``public-safety`` Â· Language: java Â· Port: 50203

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/public-safety/fir-service.proto](../../../proto/public-safety/fir-service.proto) â€” gRPC contract
- [helm/charts/fir-service/](../../../helm/charts/fir-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview