{{ config(materialized='view') }}
SELECT
  grievance_id,
  complainant_token,
  category,
  status,
  filed_at::timestamp AS filed_at,
  EXTRACT(EPOCH FROM (resolved_at - filed_at)) AS resolution_seconds
FROM {{ source('civic_raw', 'grievances') }}
