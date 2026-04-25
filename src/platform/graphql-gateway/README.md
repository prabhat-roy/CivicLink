# graphql-gateway

Federated GraphQL across services

**Domain:** ``platform`` · **Language:** go · **Port:** 50004

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/platform/graphql-gateway.proto](../../../proto/platform/graphql-gateway.proto) — gRPC contract
- [helm/charts/graphql-gateway/](../../../helm/charts/graphql-gateway/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview