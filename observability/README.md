# Observability — CivicLink

In-cluster, cloud-portable stack:

| Signal | Tool | Notes |
|---|---|---|
| Metrics  | Prometheus + Thanos    | Scraped via pod annotations; SLO alerts via Pyrra/Sloth |
| Logs     | Loki + Fluent Bit      | PII redacted at Fluent Bit before reaching Loki |
| Traces   | Tempo + Jaeger         | Sampled; OTel SDK in every service |
| Profiles | Pyroscope              | Continuous profiling per service |
| Errors   | Sentry / GlitchTip     | Frontend (Sentry) + backend (GlitchTip) |
| RUM      | OTel RUM JS            | Web Vitals on citizen portal |
| SLOs     | Pyrra                  | SLO CRDs generate Prometheus rules |
| Routing  | Alertmanager           | Critical → PagerDuty + #civiclink-alerts; per-team routes |

The stack is identical across AWS / GCP / Azure deployments. Cloud-native logging
backends (CloudWatch / Cloud Logging / Azure Monitor) are used only as off-cluster
sinks for compliance retention, not as primary tooling.