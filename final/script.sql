CREATE EXTENSION IF NOT EXISTS postgis;

DROP TABLE IF EXISTS polygon_geom_data;
CREATE TABLE polygon_geom_data (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    geom geometry
);

CREATE INDEX spatial_data_geom_idx ON polygon_geom_data USING GIST (geom);

