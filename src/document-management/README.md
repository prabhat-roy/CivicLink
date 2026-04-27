# document-management â€” CivicLink

Services in the document-management domain.

| Service | Language | gRPC port | Description |
|---|---|---|---|
| apostille-service | go | 50263 | Apostille for international use |
| attestation-service | go | 50262 | Document attestation |
| document-vault | go | 50260 | Encrypted document vault (MinIO + AES-256) |
| e-sign-service | kotlin | 50261 | Legally-binding e-signature |

> Each service has its own folder with `Dockerfile`, `Makefile`, `.env.example`, `README.md`, and a language-specific entry file.
> See [../../proto/document-management/](../../proto/document-management/) for the gRPC contracts.