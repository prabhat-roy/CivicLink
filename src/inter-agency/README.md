# inter-agency â€” CivicLink

Services in the inter-agency domain.

| Service | Language | gRPC port | Description |
|---|---|---|---|
| api-registry | go | 50282 | Inter-agency API catalogue |
| consent-service | go | 50280 | OpenID4VC consent token issuer |
| data-exchange-gateway | go | 50281 | Inter-agency federation gateway |
| federated-query | go | 50283 | Cross-agency federated query |

> Each service has its own folder with `Dockerfile`, `Makefile`, `.env.example`, `README.md`, and a language-specific entry file.
> See [../../proto/inter-agency/](../../proto/inter-agency/) for the gRPC contracts.