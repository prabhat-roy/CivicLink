# Multi-Cloud Architecture â€” CivicLink

CivicLink is built to deploy on AWS, GCP, or Azure independently. Any of the
three cloud Terraform roots in `infra/terraform/{aws,gcp,azure}/` brings up a
complete CivicLink-ready cluster on that single cloud â€” no cross-cloud
dependencies, no shared remote state, no assumed global resource names.

## Independence rules

1. Per-cloud state â€” each cloud uses its native remote backend (S3 + DynamoDB,
   GCS, Azure Storage). State is never shared.
2. Per-cloud naming â€” every resource is namespaced `civiclink-<env>` and lives
   inside that cloud's account/project/subscription.
3. Cloud-agnostic Helm charts â€” `helm/charts/<service>/values.yaml` references
   only Kubernetes primitives. Cloud-specific concerns (IRSA, Workload Identity,
   Pod Identity, storage class, ingress class, secret CSI driver) live in
   `values-aws.yaml`, `values-gcp.yaml`, `values-azure.yaml`.
4. Cloud-equivalent capabilities â€” every primitive used at the application
   layer has an equivalent on each cloud; no service is locked to one cloud.

## Cloud-equivalence table

| Capability         | AWS                       | GCP                        | Azure                              |
|--------------------|---------------------------|----------------------------|------------------------------------|
| Kubernetes         | EKS                       | GKE                        | AKS                                |
| Pod identity       | IRSA via OIDC             | Workload Identity          | Workload Identity (Pod Identity v2)|
| PostgreSQL         | RDS for Postgres          | Cloud SQL for Postgres     | Azure DB for PostgreSQL Flex       |
| Cache (Redis)      | ElastiCache               | Memorystore                | Azure Cache for Redis              |
| Kafka              | MSK                       | self-managed / Confluent   | Event Hubs (Kafka surface)         |
| Object storage     | S3                        | GCS                        | Blob Storage                       |
| Secrets            | Secrets Manager + KMS     | Secret Manager + KMS       | Key Vault                          |
| DNS / Load balancer| Route53 + NLB / ALB       | Cloud DNS + GCLB           | Azure DNS + Standard LB / AGIC     |
| Logs / Metrics     | CloudWatch (sink)         | Cloud Logging (sink)       | Azure Monitor (sink)               |

CivicLink's own observability stack (Prometheus, Grafana, Loki, Jaeger) is
deployed inside the cluster on every cloud â€” cloud-native logging is only used
as an off-cluster sink.

## Single-cloud deploy

```bash
# pick one
make iac-apply CLOUD=aws
make iac-apply CLOUD=gcp
make iac-apply CLOUD=azure

# then deploy services to that cluster
make helm-install CLOUD=aws
```

The `Makefile` (added in a future wave) will dispatch on `$CLOUD` to point
`kubectl` at the right context and apply the right `values-<cloud>.yaml`.

## Multi-cloud (active-active or active-standby)

Multi-cloud HA is not in scope for the standalone-cloud guarantee, but is
supported via:

- DNS-level traffic management (failover / weighted routing)
- Application-level dual writes (saga orchestrator coordinates writes to both clouds)
- Asymmetric cross-cloud replication for the document vault (S3 â†” GCS â†” Blob via
  rclone or cloud-native cross-region replication)

These are opt-in patterns documented in `docs/architecture/multi-cloud-ha.md`
(future). The default deployment runs on one cloud.

## CI/CD impact

CI pipelines parameterise the cloud target:

```bash
ci/jenkins/deploy.Jenkinsfile  # CLOUD=aws|gcp|azure
ci/github-actions/deploy.yml   # matrix.cloud: [aws, gcp, azure]
```

Helm releases land in the cluster matching the `CLOUD` parameter, with the
cloud-specific values overlay applied automatically.