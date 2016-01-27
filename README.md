# Docker PostgreSQL 9.5 / PostGIS 2.2

Based on official image [postgres:9.5](https://hub.docker.com/_/postgres/) then install PostGIS 2.2 


## How to use this image

To start a database with all the parameters including external volume and exposed port 

```bash
$ docker run --name postgres-postgis \
  -e POSTGRES_DB=mydb  \
  -e POSTGRES_USER=myuser \
  -e POSTGRES_PASSWORD=mypassword \
  -v /docker-volumes/postgres9.5-postgis2.2/data:/var/lib/postgresql/data \
  -p 5432:5432 \
  -d lbaresse/postgres9.5-postgis2.2
```

To start a database with all the parameters without external volume and exposed port 

```bash
$ docker run --name postgres-postgis \
  -e POSTGRES_DB=mydb  \
  -e POSTGRES_USER=myuser \
  -e POSTGRES_PASSWORD=mypassword \
  -d lbaresse/postgres9.5-postgis2.2
```

To open psql term :

```bash
$ docker run -it --link postgres-postgis:postgres --rm postgres:9.5 sh -c 'exec psql -h "$POSTGRES_PORT_5432_TCP_ADDR" -p "$POSTGRES_PORT_5432_TCP_PORT" -d mydb -U myuser'
```

