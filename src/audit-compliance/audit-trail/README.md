# audit-trail

Immutable Kafka-backed audit log

Domain: ``audit-compliance`` Â· Language: go Â· Port: 50340

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``

## See also

- [proto/audit-compliance/audit-trail.proto](../../../proto/audit-compliance/audit-trail.proto) â€” gRPC contract
- [helm/charts/audit-trail/](../../../helm/charts/audit-trail/) â€” Helm chart (added in next wave)
- [../README.md](../README.md) â€” domain overview