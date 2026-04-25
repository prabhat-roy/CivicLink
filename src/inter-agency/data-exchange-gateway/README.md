# data-exchange-gateway

Inter-agency federation gateway

**Domain:** ``inter-agency`` · **Language:** go · **Port:** 50281

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/inter-agency/data-exchange-gateway.proto](../../../proto/inter-agency/data-exchange-gateway.proto) — gRPC contract
- [helm/charts/data-exchange-gateway/](../../../helm/charts/data-exchange-gateway/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview