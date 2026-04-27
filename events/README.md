# Events â€” CivicLink

Avro schemas for cross-domain events published to Kafka. One file per event,
named `<domain>.<entity>.<verb>.avsc`. Schema-registry-managed; never break
forward compatibility â€” evolve fields with defaults only.

## Conventions

- Topic naming: `<domain>.<entity>.<event>` â€” e.g. `civil-registration.birth.registered`
- Namespace: `com.civiclink.<domain>.events`
- Every event includes:
  - `event_id` (UUID)
  - `event_time` (millis since epoch)
  - `actor` (officer or citizen who triggered the event, where applicable)
  - `correlation_id` (propagated across all related events for tracing)
- PII (citizen_id, biometric_hash) is always tokenised â€” schemas reference
  the tokenised form via the shared `CitizenIdRef` record.