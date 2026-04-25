# Inter-agency request flow with explicit citizen consent.
# Step 1: citizen issues a ConsentToken via consent-service.
POST https://api.civiclink.gov/v1/consent
Content-Type: application/json
Authorization: Bearer {{citizen_token}}
{
  "requesting_agency": "land-property",
  "providing_agency":  "citizen-identity",
  "scopes": ["citizen.basic.read"]
}
HTTP 201
[Captures]
consent_id: jsonpath "$.id"

# Step 2: requesting agency calls data-exchange-gateway with the consent token.
GET https://api.civiclink.gov/v1/inter-agency/citizens/{{citizen_token}}
X-Consent-Token: {{consent_id}}
HTTP 200
[Asserts]
jsonpath "$.token" == "{{citizen_token}}"

# Step 3: rejected when consent is missing or expired.
GET https://api.civiclink.gov/v1/inter-agency/citizens/{{citizen_token}}
HTTP 403
