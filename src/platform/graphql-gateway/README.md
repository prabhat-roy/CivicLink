# graphql-gateway

Federated GraphQL across services

Domain: ``platform`` Â· Language: go Â· Port: 50004

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/platform/graphql-gateway.proto](../../../proto/platform/graphql-gateway.proto) â€” gRPC contract
- [helm/charts/graphql-gateway/](../../../helm/charts/graphql-gateway/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview