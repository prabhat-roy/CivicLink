# citizen-identity — CivicLink

Services in the **citizen-identity** domain.

| Service | Language | gRPC port | Description |
|---|---|---|---|
| biometric-service | java | 50042 | MOSIP biometric integration |
| deduplication-service | java | 50043 | Citizen deduplication via biometric+demographic match |
| digital-id-wallet | rust | 50041 | OpenID4VC verifiable credentials wallet |
| national-id-service | java | 50040 | National ID issuance + lifecycle |

> Each service has its own folder with `Dockerfile`, `Makefile`, `.env.example`, `README.md`, and a language-specific entry file.
> See [../../proto/citizen-identity/](../../proto/citizen-identity/) for the gRPC contracts.