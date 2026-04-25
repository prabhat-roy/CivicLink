# Default policy for CivicLink application services.
# Each service consumes its own KV path; Postgres / Redis credentials are dynamic.
path "civiclink/data/{{identity.entity.aliases.auth_kubernetes_*.metadata.service_account_name}}/*" {
  capabilities = ["read"]
}
path "database/creds/civiclink-{{identity.entity.aliases.auth_kubernetes_*.metadata.service_account_name}}" {
  capabilities = ["read"]
}
path "transit/encrypt/civiclink" { capabilities = ["update"] }
path "transit/decrypt/civiclink" { capabilities = ["update"] }