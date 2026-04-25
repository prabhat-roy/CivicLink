# Redis key patterns — CivicLink

| Pattern | TTL | Service |
|---|---|---|
| `session:{session_id}` | 24h | session-service |
| `mfa:{user_id}:totp:{ts}` | 30s | mfa-service |
| `consent:{citizen_token}:{agency}` | 30d | consent-service |
| `rate:{ip}:{path}` | 60s | api-gateway |
| `cache:catalog:{key}` | 10m | various |
