CREATE EXTENSION IF NOT EXISTS postgis;

CREATE TABLE land_parcel (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    parcel_id       TEXT UNIQUE NOT NULL,
    geometry        geometry(POLYGON, 4326) NOT NULL,
    area_sqm        NUMERIC NOT NULL,
    classification  TEXT,
    created_at      TIMESTAMPTZ NOT NULL DEFAULT now()
);
CREATE INDEX land_parcel_geom_gix ON land_parcel USING GIST (geometry);
