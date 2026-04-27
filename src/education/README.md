# education â€” CivicLink

Services in the education domain.

| Service | Language | gRPC port | Description |
|---|---|---|---|
| certificate-service | java | 50183 | Educational certificate issuance |
| exam-board | java | 50182 | Examination board + results |
| scholarship-service | java | 50181 | Scholarship enrolment + disbursement |
| school-registration | java | 50180 | School registration |

> Each service has its own folder with `Dockerfile`, `Makefile`, `.env.example`, `README.md`, and a language-specific entry file.
> See [../../proto/education/](../../proto/education/) for the gRPC contracts.