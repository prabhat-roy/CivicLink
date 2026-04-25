CREATE TABLE birth_record (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    record_number   TEXT NOT NULL UNIQUE,
    citizen_token   TEXT NOT NULL,
    date_of_birth   DATE NOT NULL,
    place_of_birth  TEXT NOT NULL,
    parent_a_token  TEXT,
    parent_b_token  TEXT,
    registered_at   TIMESTAMPTZ NOT NULL DEFAULT now(),
    registered_by   TEXT NOT NULL
);
