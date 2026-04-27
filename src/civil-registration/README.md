# civil-registration â€” CivicLink

Services in the civil-registration domain.

| Service | Language | gRPC port | Description |
|---|---|---|---|
| birth-registration | java | 50060 | Birth certificate issuance |
| death-registration | java | 50061 | Death certificate issuance |
| marriage-service | java | 50062 | Marriage registration |
| name-change-service | java | 50063 | Legal name change workflow |

> Each service has its own folder with `Dockerfile`, `Makefile`, `.env.example`, `README.md`, and a language-specific entry file.
> See [../../proto/civil-registration/](../../proto/civil-registration/) for the gRPC contracts.