# api-gateway

HTTP+gRPC ingress, JWT auth, rate limiting

**Domain:** ``platform`` · **Language:** go · **Port:** 50000

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/platform/api-gateway.proto](../../../proto/platform/api-gateway.proto) — gRPC contract
- [helm/charts/api-gateway/](../../../helm/charts/api-gateway/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview