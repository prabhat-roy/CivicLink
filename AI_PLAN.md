# AI_PLAN.md â€” CivicLink (Citizen Services & e-Government Platform)

> Hierarchical AI/ML strategy. Reuses the Paperclip / OpenClaw / NemoClaw
> agent platform first defined in [ShopOS/AI.md](../ShopOS/AI.md). This file
> is the CivicLink-specific specialisation.

---

## 1. Why AI in CivicLink

CivicLink ingests millions of citizen interactions across passport, licence,
welfare, tax, land-record, and grievance domains. Machine-driven assistance
(not just predictive ML) is the only realistic way to:

- Triage and answer citizen queries in 22+ Indian + ASEAN languages without
  inflating the human contact-centre headcount.
- Catch benefit-fraud and identity-fraud rings that span multiple welfare
  schemes â€” patterns no single caseworker can see.
- Keep public-record search retrievable in plain language ("when did the
  drainage tender for ward 12 close?") rather than form-bound.
- Continuously audit accessibility (WCAG 2.2 AA) and language parity across
  each new release of every citizen-facing portal.

All of this must operate under NIST 800-53 / India IT Act / GDPR â€” so AI is
self-hosted, sandboxed, and 100% audit-logged.

---

## 2. Domain-Specific AI/ML Use Cases

| # | Use case | Domain | Model class | Latency budget |
|---|----------|--------|-------------|----------------|
| 1 | Citizen-services voice/chat assistant (22 languages) | grievance, helpdesk | Llama 3.1 70B + IndicBERT + Whisper-large-v3 | <1.5 s first token |
| 2 | Document classification & OCR (passport, ration card, licence) | identity, registration | Donut + LayoutLMv3 + PaddleOCR | <3 s/page |
| 3 | Cross-scheme benefit-fraud detection | welfare, subsidies | Graph neural net (PyG) + XGBoost ensemble | nightly batch |
| 4 | Welfare-eligibility recommender | welfare, grievance | Rule-engine + LLM rationale | <800 ms |
| 5 | Public-records semantic search | tendering, land-records | E5-large embeddings + Qdrant + Llama 3.1 8B reranker | <600 ms |
| 6 | Accessibility / WCAG auditor agent | every portal release | axe-core + Llama 3.1 70B critique | per-release |
| 7 | Form-filling assistant (vernacular â†’ structured) | every citizen form | Llama 3.1 70B + rules grounding | <2 s/turn |
| 8 | Tender-anomaly detection (price-rigging) | procurement | Isolation Forest + LLM-on-bid-text | nightly |
| 9 | Land-record dispute pattern mining | land, courts | LDA + entity-linking + LLM summariser | weekly |
| 10 | Citizen-feedback sentiment & topic clustering | grievance, surveys | BERTopic + IndicBERT | hourly |

---

## 3. Hierarchical Agent Architecture

Reuses the OpenClaw agent platform, Paperclip orchestrator, and
NemoClaw sandbox names from `ShopOS/AI.md`. Each tier reports up.

### Tier 0 â€” Master Architect Agent (1 agent)

- Single OpenClaw instance (Llama 3.1 70B, 128k ctx) named `civic-architect`.
- Owns: research new AI tooling, propose new services, on-board new Tier 1
  division leads, retire obsolete agents, weekly written report to humans.
- Read-only on production; write access only to a staging GitOps repo.

### Tier 1 â€” Division Leads (5 agents)

| Agent | Scope |
|-------|-------|
| `civic-dev-lead`        | All backend/frontend service code |
| `civic-devops-lead`     | Helm, GitOps, infra, CI |
| `civic-devsecops-lead`  | OPA, Vault, Cilium netpols, Falco rules, NIST controls |
| `civic-dataml-lead`     | Feature store, training pipelines, MLflow, drift |
| `civic-platform-lead`   | Cross-cutting (idempotency, saga-orchestrator, outbox) |

Each Tier-1 agent is an OpenClaw + Llama 3.1 70B with division-specific tools
(kubectl read, helm template, terraform plan, gh, MLflow API).

### Tier 2 â€” Specialist Agents

Three parallel families. Every agent is read-only on prod, opens PRs only.

By language â€” `go-agent`, `java-agent`, `kotlin-agent`, `python-agent`,
`node-agent`, `rust-agent`, `typescript-agent`. Each owns: lint, test,
upgrade dependencies, fix CVEs, write missing docs, propose refactors.

By tool â€” one agent per OSS tool:
PostgreSQL, MongoDB, Redis, Elasticsearch, Cassandra, Kafka, NATS, Pulsar,
Vault, Keycloak, OPA, Kyverno, Falco, Cilium, Istio, ArgoCD, Argo Workflows,
Prometheus, Grafana, Loki, Jaeger, Tempo, OpenTelemetry, MinIO, Trivy,
Cosign, MOSIP-bridge, DigiLocker-bridge, OpenFGA, Wazuh, VictoriaMetrics,
Coroot, Camunda, Druid. Each agent owns version tracking, CVE response,
config drift detection, helm-values doc generation, runbook updates.

By service â€” one agent per microservice (175 services in CivicLink).
Bound to `src/<domain>/<service>/`. Owns: README, API doc, OpenAPI spec,
test coverage report, CHANGELOG, dependency upgrades, /healthz wiring.

### Tier 3 â€” Ephemeral Worker Agents

Spawned per Argo Workflows job to do a single task (run tests, generate a
migration, write a runbook from a recent incident). Live <30 minutes, all
output goes through a Tier-2 reviewer agent before any PR.

### Lifecycle responsibilities (every agent)

1. Research â€” read upstream changelogs, CVE feeds, Kubernetes release
   notes, PostgreSQL release notes, NIST 800-53 revision updates.
2. Document â€” keep its scope's README/runbook/API spec current.
3. Implement â€” open PRs, never push directly to `main`.
4. Test â€” run unit + integration + contract tests; attach evidence.
5. Review â€” review PRs from peer agents in the same tier.
6. Deploy â€” request a deploy via Argo Rollouts; humans approve prod.
7. Monitor â€” watch its scope's Grafana dashboards, alert on regression.
8. Respond â€” page on PagerDuty escalation, run runbook, write postmortem.
9. Upgrade â€” quarterly major-version review, propose migration plan.
10. Report â€” weekly markdown report committed to `ai/reports/`.

---

## 4. Separate AI Infrastructure

CivicLink's AI runtime is physically and logically separated from app
clusters â€” different cluster, different VPC, different blast radius.

```
ai-platform/
â”œâ”€â”€ cluster: civic-ai-{aws,gcp,azure}     â† GPU node pools, taint=ai-only
â”œâ”€â”€ namespace: civic-ai-control            â† Paperclip (orchestrator)
â”œâ”€â”€ namespace: civic-ai-agents             â† OpenClaw runtime
â”œâ”€â”€ namespace: civic-ai-sandbox            â† NemoClaw guarded execution
â”œâ”€â”€ namespace: civic-ai-models             â† vLLM, Ollama, LiteLLM gateway
â”œâ”€â”€ namespace: civic-ai-data               â† Qdrant, Weaviate, MLflow
â”œâ”€â”€ namespace: civic-ai-obs                â† Langfuse, Phoenix tracing
â””â”€â”€ namespace: civic-ai-pipelines          â† Argo Workflows for training
```

### Hardware

- AWS: 2Ã— `g5.12xlarge` (4Ã— A10G each) for inference; 1Ã— `p4d.24xlarge`
  (8Ã— A100) for fine-tuning. Spot pool for batch.
- GCP: equivalent A100 / L4 pools.
- Azure: equivalent NDv4 pools.
- All clouds run identical Helm charts; values overlay picks driver/region.

### Software stack (self-hosted, no SaaS)

| Layer | Tool | Purpose |
|-------|------|---------|
| Inference | vLLM | High-throughput tensor-parallel LLM serving |
| Local dev | Ollama | Engineer laptops, offline POCs |
| Gateway | LiteLLM | One OpenAI-compatible endpoint, per-team quota |
| Orchestrator | Paperclip | Task queue, agent inbox, audit trail |
| Agent platform | OpenClaw | Llama 3.1 70B agent runtime |
| Sandbox | NemoClaw | NeMo Guardrails â€” input/output/tool policy |
| Vector DB | Qdrant | Public-records embeddings |
| Vector DB | Weaviate | Multi-modal (image + text) for document AI |
| MLOps | MLflow | Model registry, experiment tracking |
| Observability | Langfuse | LLM trace, cost, eval |
| Observability | Phoenix | OTel-native LLM tracing |
| Workflows | Argo Workflows | Training/eval pipelines |
| Feature store | Feast | Online + offline features |
| Drift / monitoring | Evidently | Data + concept drift |

### Data isolation

- Citizen PII never leaves its origin region (Cilium netpol + OPA).
- Vector DBs sharded per state/UT â€” no cross-state retrieval.
- Training data lake in MinIO, encrypted at rest with Vault Transit.
- Every prompt + completion goes to Langfuse and Paperclip with the
  citizen-ID hashed (not raw).

---

## 5. Compliance & Guardrails

| Control | Mechanism |
|---------|-----------|
| NIST 800-53 (AC, AU, SC, SI families) | OPA policies on every agent action |
| India IT Act / DPDP | PII tokenisation before model input |
| GDPR (for ASEAN tenants) | Right-to-erasure handler in Paperclip |
| WCAG 2.2 AA | Tier-2 accessibility agent gates every UI PR |
| Election-period quiet hours | NemoClaw blocks public-facing LLM outputs in pre-election window |
| Vernacular safety | IndicTrans2 round-trip eval on every release |
| No autonomous prod writes | All agent tool-calls to write APIs require human approval token |

---

## 6. Implementation Roadmap (CivicLink-specific)

| Month | Milestone |
|-------|-----------|
| 1 | Stand up `civic-ai-*` clusters on AWS first; vLLM serving Llama 3.1 70B |
| 2 | Paperclip + NemoClaw + Langfuse online; Tier-0 architect agent live |
| 3 | Tier-1 division leads; first read-only PRs against `main` |
| 4 | Doc & dependency-upgrade Tier-2 agents (per-language) |
| 5 | Per-tool Tier-2 agents (DB, mesh, security tools) |
| 6 | Per-service Tier-2 agents (staged rollout: identity â†’ grievance â†’ welfare) |
| 7 | First production AI use case: citizen voice assistant in 4 languages |
| 8 | Fraud-detection GNN on welfare; tender-anomaly detector; multi-cloud failover drill |

---

## 7. Cost Envelope (target)

- Infra: $4,200 â€“ $6,800 / month per cloud (one cloud is primary)
- No subscription LLM spend â€” all self-hosted.
- Engineer time saved: target â‰¥ 30% on doc + dependency-upgrade churn.

---

## 8. Cross-References

- Master AI strategy: [ShopOS/AI.md](../ShopOS/AI.md)
- Same Paperclip/OpenClaw/NemoClaw platform shared across all 15 sibling
  projects â€” see each project's `AI_PLAN.md`.
