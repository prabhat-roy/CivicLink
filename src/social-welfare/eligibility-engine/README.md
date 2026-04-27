# eligibility-engine

Rules+ML eligibility determination

Domain: ``social-welfare`` Â· Language: python Â· Port: 50141

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/social-welfare/eligibility-engine.proto](../../../proto/social-welfare/eligibility-engine.proto) â€” gRPC contract
- [helm/charts/eligibility-engine/](../../../helm/charts/eligibility-engine/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview