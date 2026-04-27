# identity-access â€” CivicLink

Services in the identity-access domain.

| Service | Language | gRPC port | Description |
|---|---|---|---|
| auth-service | rust | 50020 | FIDO2/WebAuthn passwordless auth |
| citizen-sso | rust | 50022 | Citizen OIDC SSO |
| mfa-service | go | 50023 | Multi-factor auth (TOTP, WebAuthn) |
| officer-sso | rust | 50021 | Officer SAML/OIDC SSO |
| role-service | kotlin | 50024 | RBAC + role hierarchy |

> Each service has its own folder with `Dockerfile`, `Makefile`, `.env.example`, `README.md`, and a language-specific entry file.
> See [../../proto/identity-access/](../../proto/identity-access/) for the gRPC contracts.