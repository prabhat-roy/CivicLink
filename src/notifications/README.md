# notifications — CivicLink

Services in the **notifications** domain.

| Service | Language | gRPC port | Description |
|---|---|---|---|
| email-service | node | 50322 | Email dispatch |
| in-app-service | go | 50324 | In-app message inbox |
| ivr-service | node | 50325 | Voice IVR flow |
| notification-orchestrator | go | 50320 | Multi-channel routing + templates |
| push-service | go | 50323 | APNs/FCM push notifications |
| sms-service | go | 50321 | SMS dispatch |

> Each service has its own folder with `Dockerfile`, `Makefile`, `.env.example`, `README.md`, and a language-specific entry file.
> See [../../proto/notifications/](../../proto/notifications/) for the gRPC contracts.