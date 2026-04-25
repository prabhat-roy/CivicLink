package civiclink.consent

import future.keywords.if

# Inter-agency data flow MUST present a valid OpenID4VC ConsentToken.
default allow_inter_agency := false

allow_inter_agency if {
    input.request_path == "data-exchange-gateway"
    input.consent_token.expires_at > input.now
    input.requested_scope in input.consent_token.scopes
}