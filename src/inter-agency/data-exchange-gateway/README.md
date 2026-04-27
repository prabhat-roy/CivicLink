# data-exchange-gateway

Inter-agency federation gateway

Domain: ``inter-agency`` Â· Language: go Â· Port: 50281

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/inter-agency/data-exchange-gateway.proto](../../../proto/inter-agency/data-exchange-gateway.proto) â€” gRPC contract
- [helm/charts/data-exchange-gateway/](../../../helm/charts/data-exchange-gateway/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview