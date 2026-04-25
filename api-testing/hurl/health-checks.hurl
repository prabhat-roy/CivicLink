# Smoke test: every public surface returns /healthz=ok.
GET https://api.civiclink.gov/healthz
HTTP 200
[Asserts]
jsonpath "$.status" == "ok"

GET https://citizen.civiclink.gov/healthz
HTTP 200

GET https://officer.civiclink.gov/healthz
HTTP 200
