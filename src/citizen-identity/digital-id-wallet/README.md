# digital-id-wallet

OpenID4VC verifiable credentials wallet

**Domain:** ``citizen-identity`` · **Language:** rust · **Port:** 50041

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/citizen-identity/digital-id-wallet.proto](../../../proto/citizen-identity/digital-id-wallet.proto) — gRPC contract
- [helm/charts/digital-id-wallet/](../../../helm/charts/digital-id-wallet/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview