# biometric-service

MOSIP biometric integration

Domain: ``citizen-identity`` Â· Language: java Â· Port: 50042

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/citizen-identity/biometric-service.proto](../../../proto/citizen-identity/biometric-service.proto) â€” gRPC contract
- [helm/charts/biometric-service/](../../../helm/charts/biometric-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview