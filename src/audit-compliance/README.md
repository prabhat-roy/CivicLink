# audit-compliance — CivicLink

Services in the **audit-compliance** domain.

| Service | Language | gRPC port | Description |
|---|---|---|---|
| access-log-service | go | 50343 | Officer access log + RTI |
| audit-trail | go | 50340 | Immutable Kafka-backed audit log |
| data-retention | go | 50341 | Retention policy enforcement |
| right-to-erasure | go | 50342 | GDPR Article 17 erasure workflow |

> Each service has its own folder with `Dockerfile`, `Makefile`, `.env.example`, `README.md`, and a language-specific entry file.
> See [../../proto/audit-compliance/](../../proto/audit-compliance/) for the gRPC contracts.