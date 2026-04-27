# Health check for all critical services
GET https://civiclink.internal/healthz
HTTP 200
[Asserts]
jsonpath "$.status" == "ok"

GET https://api.civiclink.internal/healthz
HTTP 200
[Asserts]
jsonpath "$.status" == "ok"
