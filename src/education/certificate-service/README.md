# certificate-service

Educational certificate issuance

Domain: ``education`` Â· Language: java Â· Port: 50183

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/education/certificate-service.proto](../../../proto/education/certificate-service.proto) â€” gRPC contract
- [helm/charts/certificate-service/](../../../helm/charts/certificate-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview