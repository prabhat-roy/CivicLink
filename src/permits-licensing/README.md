# permits-licensing â€” CivicLink

Services in the permits-licensing domain.

| Service | Language | gRPC port | Description |
|---|---|---|---|
| inspection-scheduler | go | 50083 | Inspection scheduling + assignment |
| license-service | java | 50081 | Driving, professional, business licences |
| permit-service | java | 50080 | Construction, trade, environmental permits |
| renewal-service | java | 50082 | Renewal workflow + reminders |

> Each service has its own folder with `Dockerfile`, `Makefile`, `.env.example`, `README.md`, and a language-specific entry file.
> See [../../proto/permits-licensing/](../../proto/permits-licensing/) for the gRPC contracts.