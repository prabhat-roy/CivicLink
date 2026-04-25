# Networking — CivicLink

| Layer | Tool | Role |
|---|---|---|
| Edge   | Traefik   | Public TLS termination + rate limiting |
| Mesh   | Istio     | mTLS STRICT, AuthorizationPolicy default-deny, retries |
| CNI    | Cilium    | eBPF L3/L4, cross-domain BFF-only ingress |
| API GW | Kong      | Optional JWT/OIDC plugin layer for partner APIs |
| Linkerd | Linkerd  | Failover mesh option (not active by default) |