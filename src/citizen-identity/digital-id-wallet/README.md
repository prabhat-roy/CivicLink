# digital-id-wallet

OpenID4VC verifiable credentials wallet

Domain: ``citizen-identity`` Â· Language: rust Â· Port: 50041

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/citizen-identity/digital-id-wallet.proto](../../../proto/citizen-identity/digital-id-wallet.proto) â€” gRPC contract
- [helm/charts/digital-id-wallet/](../../../helm/charts/digital-id-wallet/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview