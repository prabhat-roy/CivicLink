# grievance â€” CivicLink

Services in the grievance domain.

| Service | Language | gRPC port | Description |
|---|---|---|---|
| escalation-service | go | 50221 | SLA-driven escalation |
| grievance-service | python | 50220 | NLP-classified grievances |
| status-tracker | node | 50222 | Citizen status tracking |
| survey-service | node | 50223 | Citizen feedback surveys |

> Each service has its own folder with `Dockerfile`, `Makefile`, `.env.example`, `README.md`, and a language-specific entry file.
> See [../../proto/grievance/](../../proto/grievance/) for the gRPC contracts.