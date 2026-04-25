# Grafana Dashboards

Each domain ships a dashboard provisioned via ConfigMap. See
[helm/charts/_observability/grafana-dashboards/](../../helm/charts/_observability/grafana-dashboards/)
(future). Standard dashboards:

- CivicLink Overview — RED metrics across all 76 services
- Per-domain dashboards (18 dashboards, one per domain)
- Inter-Agency Consent — consent token issuance / rejection
- Audit Trail — audit event flow latency
- Cloud Footprint — cost + usage per cloud (AWS, GCP, Azure)