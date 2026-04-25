# Security — CivicLink

| Tool | Purpose |
|---|---|
| Vault | Dynamic Postgres/Redis creds, transit encryption, mTLS PKI for Istio |
| Keycloak | Citizen + officer SSO, FIDO2/WebAuthn, MFA, OpenID4VC |
| OPA / Gatekeeper | K8s admission policies + inter-agency consent enforcement |
| Kyverno | Image-signature verification + mandatory labels |
| Falco | Runtime threat detection (network anomalies, raw PII access) |
| cert-manager | TLS automation, Vault-backed issuer |
| SPIRE | Workload identity (SPIFFE SVIDs for every pod) |
| Coraza WAF | OWASP CRS + custom rules at the edge |
| Cosign + Sigstore | Keyless image signing via GitHub OIDC |
| Trivy + Syft | Vulnerability scanning + SBOM generation |

PII rule: every Kafka payload carrying citizen data uses the tokenised CitizenIdRef
(see [events/common.CitizenIdRef.avsc](../events/common.CitizenIdRef.avsc)).