#!/usr/bin/env bash
# One-shot deploy of every OSS tool registered for CivicLink via ArgoCD.
set -euo pipefail
argocd app sync -l "project=civiclink-tools" --grpc-web
