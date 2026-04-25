# role-service

RBAC + role hierarchy

**Domain:** ``identity-access`` · **Language:** kotlin · **Port:** 50024

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` — health check, returns ``{ "status": "ok" }``

## See also

- [proto/identity-access/role-service.proto](../../../proto/identity-access/role-service.proto) — gRPC contract
- [helm/charts/role-service/](../../../helm/charts/role-service/) — Helm chart (added in next wave)
- [../README.md](../README.md) — domain overview