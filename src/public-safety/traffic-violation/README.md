# traffic-violation

Traffic violation challan

**Domain:** ``public-safety`` · **Language:** java · **Port:** 50202

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/public-safety/traffic-violation.proto](../../../proto/public-safety/traffic-violation.proto) — gRPC contract
- [helm/charts/traffic-violation/](../../../helm/charts/traffic-violation/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview