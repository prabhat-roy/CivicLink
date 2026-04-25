# Helm Charts — CivicLink

One chart per service. Charts are **cloud-agnostic** — Kubernetes primitives only.
Per-cloud differences live in `values-aws.yaml`, `values-gcp.yaml`, `values-azure.yaml`
which add cloud-specific annotations (IRSA / Workload Identity / Pod Identity),
storage classes, and ingress class names.

## Layout

```
helm/charts/<service>/
├── Chart.yaml
├── values.yaml            ← cloud-agnostic defaults
├── values-aws.yaml        ← IRSA + EBS + ALB ingress + AWS Secrets CSI
├── values-gcp.yaml        ← Workload Identity + pd-balanced + GCE Ingress + Secret Manager CSI
├── values-azure.yaml      ← Pod Identity + managed-csi + AGIC + Key Vault CSI
└── templates/
    ├── _helpers.tpl
    ├── deployment.yaml
    ├── service.yaml
    └── serviceaccount.yaml
```

## Install

```bash
SVC=auth-service
CLOUD=aws       # or gcp, azure
helm upgrade --install $SVC helm/charts/$SVC \
  --namespace civiclink \
  --create-namespace \
  -f helm/charts/$SVC/values.yaml \
  -f helm/charts/$SVC/values-$CLOUD.yaml
```