# biometric-service

MOSIP biometric integration

**Domain:** ``citizen-identity`` · **Language:** java · **Port:** 50042

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/citizen-identity/biometric-service.proto](../../../proto/citizen-identity/biometric-service.proto) — gRPC contract
- [helm/charts/biometric-service/](../../../helm/charts/biometric-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview