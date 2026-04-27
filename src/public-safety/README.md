# public-safety â€” CivicLink

Services in the public-safety domain.

| Service | Language | gRPC port | Description |
|---|---|---|---|
| emergency-service | go | 50201 | Emergency 112 routing |
| fir-service | java | 50203 | First Information Report registration |
| incident-reporting | java | 50200 | Citizen incident reports |
| traffic-violation | java | 50202 | Traffic violation challan |

> Each service has its own folder with `Dockerfile`, `Makefile`, `.env.example`, `README.md`, and a language-specific entry file.
> See [../../proto/public-safety/](../../proto/public-safety/) for the gRPC contracts.