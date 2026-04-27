# platform â€” CivicLink

Services in the platform domain.

| Service | Language | gRPC port | Description |
|---|---|---|---|
| api-gateway | go | 50000 | HTTP+gRPC ingress, JWT auth, rate limiting |
| citizen-bff | go | 50001 | BFF for citizen portal (Next.js) |
| graphql-gateway | go | 50004 | Federated GraphQL across services |
| mobile-bff | go | 50003 | BFF for citizen mobile app (Flutter) |
| officer-bff | go | 50002 | BFF for officer dashboard (React) |

> Each service has its own folder with `Dockerfile`, `Makefile`, `.env.example`, `README.md`, and a language-specific entry file.
> See [../../proto/platform/](../../proto/platform/) for the gRPC contracts.