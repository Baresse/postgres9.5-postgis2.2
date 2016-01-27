CREATE EXTENSION postgis;
CREATE EXTENSION postgis_topology;
CREATE EXTENSION fuzzystrmatch;
CREATE EXTENSION postgis_tiger_geocoder;
CREATE EXTENSION pgrouting;
CREATE EXTENSION unaccent;
ALTER FUNCTION unaccent(text) IMMUTABLE;
