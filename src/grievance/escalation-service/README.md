# escalation-service

SLA-driven escalation

**Domain:** ``grievance`` · **Language:** go · **Port:** 50221

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/grievance/escalation-service.proto](../../../proto/grievance/escalation-service.proto) — gRPC contract
- [helm/charts/escalation-service/](../../../helm/charts/escalation-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview