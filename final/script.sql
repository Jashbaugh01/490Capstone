CREATE EXTENSION IF NOT EXISTS postgis;

DROP TABLE IF EXISTS polygon_geom_data;
CREATE TABLE polygon_geom_data (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    geom geometry
);

DROP TABLE IF EXISTS form_data;
CREATE TABLE form_data (
    form_id SERIAL PRIMARY KEY,
    loc_id INT REFERENCES polygon_geom_data(id),
    name VARCHAR(100), 
    email VARCHAR(250), 
    item VARCHAR(250),
    color VARCHAR(100),
    date DATE, 
    reason VARCHAR(500),
    extra VARCHAR(250)
);


CREATE INDEX spatial_data_geom_idx ON polygon_geom_data USING GIST (geom);

