# public-health — CivicLink

Services in the **public-health** domain.

| Service | Language | gRPC port | Description |
|---|---|---|---|
| clinic-service | java | 50163 | Public clinic management |
| epidemic-tracking | python | 50162 | Disease surveillance + alerting |
| health-record | java | 50161 | Public health EHR (FHIR) |
| vaccination-service | java | 50160 | Immunisation registry |

> Each service has its own folder with `Dockerfile`, `Makefile`, `.env.example`, `README.md`, and a language-specific entry file.
> See [../../proto/public-health/](../../proto/public-health/) for the gRPC contracts.