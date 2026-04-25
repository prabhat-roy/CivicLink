CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TABLE citizen_profile (
    id          UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    nid_token   TEXT NOT NULL UNIQUE,
    full_name   TEXT NOT NULL,
    dob         DATE NOT NULL,
    created_at  TIMESTAMPTZ NOT NULL DEFAULT now()
);
CREATE INDEX citizen_profile_nid ON citizen_profile (nid_token);
