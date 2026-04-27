# taxation â€” CivicLink

Services in the taxation domain.

| Service | Language | gRPC port | Description |
|---|---|---|---|
| assessment-service | java | 50122 | Tax assessment + scrutiny |
| refund-service | java | 50123 | Refund processing |
| tax-filing | java | 50121 | Tax return filing |
| tax-registration | java | 50120 | Taxpayer registration |

> Each service has its own folder with `Dockerfile`, `Makefile`, `.env.example`, `README.md`, and a language-specific entry file.
> See [../../proto/taxation/](../../proto/taxation/) for the gRPC contracts.