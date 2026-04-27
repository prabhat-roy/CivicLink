# social-welfare â€” CivicLink

Services in the social-welfare domain.

| Service | Language | gRPC port | Description |
|---|---|---|---|
| benefit-service | java | 50140 | Benefit enrolment + lifecycle |
| case-management | java | 50143 | Case officer workflow |
| disbursement-service | go | 50142 | DBT disbursement to bank/wallet |
| eligibility-engine | python | 50141 | Rules+ML eligibility determination |

> Each service has its own folder with `Dockerfile`, `Makefile`, `.env.example`, `README.md`, and a language-specific entry file.
> See [../../proto/social-welfare/](../../proto/social-welfare/) for the gRPC contracts.