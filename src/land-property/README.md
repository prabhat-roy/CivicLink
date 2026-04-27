# land-property â€” CivicLink

Services in the land-property domain.

| Service | Language | gRPC port | Description |
|---|---|---|---|
| land-registry | java | 50100 | Land records (PostGIS) |
| mutation-service | java | 50102 | Land record mutation workflow |
| property-valuation | java | 50101 | Government property valuation |
| title-service | java | 50103 | Title search + encumbrance |

> Each service has its own folder with `Dockerfile`, `Makefile`, `.env.example`, `README.md`, and a language-specific entry file.
> See [../../proto/land-property/](../../proto/land-property/) for the gRPC contracts.