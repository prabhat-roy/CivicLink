# role-service

RBAC + role hierarchy

Domain: ``identity-access`` Â· Language: kotlin Â· Port: 50024

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/identity-access/role-service.proto](../../../proto/identity-access/role-service.proto) â€” gRPC contract
- [helm/charts/role-service/](../../../helm/charts/role-service/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview