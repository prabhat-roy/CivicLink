#!/usr/bin/env bash
set -euo pipefail
pact-provider-verifier https://pact-broker.civiclink.internal \
  --provider civiclink_identity_service \
  --provider-base-url http://identity-service.civiclink.svc:50060 \
  --provider-version "${GIT_SHA:-local}" \
  --publish-verification-results
