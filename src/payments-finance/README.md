# payments-finance â€” CivicLink

Services in the payments-finance domain.

| Service | Language | gRPC port | Description |
|---|---|---|---|
| e-receipt-service | go | 50243 | Digital receipt issuance |
| payment-gateway | go | 50240 | Multi-rail payment routing |
| subsidy-service | go | 50242 | Subsidy disbursement |
| treasury-service | go | 50241 | Government treasury |

> Each service has its own folder with `Dockerfile`, `Makefile`, `.env.example`, `README.md`, and a language-specific entry file.
> See [../../proto/payments-finance/](../../proto/payments-finance/) for the gRPC contracts.