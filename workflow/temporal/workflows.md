# CivicLink Workflows on Temporal

| Workflow | Owner service | Trigger |
|---|---|---|
| BirthRegistrationFlow | civil-registration | Citizen submits via portal/officer |
| LandTitleTransferFlow | land-property | Mutation request |
| BenefitDisbursementFlow | social-welfare | Eligible citizen approved |
| InterAgencyDataRequestFlow | inter-agency | API call with consent token |
| GrievanceEscalationFlow | grievance | SLA breach |
| RightToErasureFlow | audit-compliance | GDPR Art 17 request |
