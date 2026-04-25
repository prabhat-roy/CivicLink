# Source Code — CivicLink

Backend services organised by business domain. Each domain has its own folder; each
service inside a domain has its own subfolder with a complete project layout
(Dockerfile, Makefile, `.env.example`, language-specific build file, source tree).

## Domains (18)

- [`analytics-policy/`](analytics-policy/) — 4 services
- [`audit-compliance/`](audit-compliance/) — 4 services
- [`citizen-identity/`](citizen-identity/) — 4 services
- [`civil-registration/`](civil-registration/) — 4 services
- [`document-management/`](document-management/) — 4 services
- [`education/`](education/) — 4 services
- [`grievance/`](grievance/) — 4 services
- [`identity-access/`](identity-access/) — 5 services
- [`inter-agency/`](inter-agency/) — 4 services
- [`land-property/`](land-property/) — 4 services
- [`notifications/`](notifications/) — 6 services
- [`payments-finance/`](payments-finance/) — 4 services
- [`permits-licensing/`](permits-licensing/) — 4 services
- [`platform/`](platform/) — 5 services
- [`public-health/`](public-health/) — 4 services
- [`public-safety/`](public-safety/) — 4 services
- [`social-welfare/`](social-welfare/) — 4 services
- [`taxation/`](taxation/) — 4 services

Total: **76 services**.

## Conventions

- One folder per service; one main entry file per language (`main.go`, `Application.java`, `main.py`, etc.)
- Every service exposes `/healthz` returning `{ "status": "ok" }`
- Every service ships a `Dockerfile` (multi-stage, non-root, minimal base) and a `Makefile`
- gRPC contracts live in [`../proto/<domain>/<service>.proto`](../proto/)
- Kafka schemas live in [`../events/`](../events/)

## Languages used

- **Go** (1.24): high-throughput stateless services (gateway, BFFs, telemetry, payment-router, audit-trail)
- **Java 21 / Spring Boot 3.3**: stateful business services with rich domain models (civil registration, land registry, taxation)
- **Kotlin / Spring Boot 3.3**: e-sign, role services
- **Python 3.12 / FastAPI**: ML/AI services (eligibility engine, NLP grievance, geospatial AI)
- **Node.js 22 / Fastify**: lightweight notification + survey services
- **Rust 1.80 / Actix**: cryptographic services (auth, digital ID wallet, SSO)