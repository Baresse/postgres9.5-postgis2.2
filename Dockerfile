FROM postgres:9.5

MAINTAINER lbaresse <laurent.baresse@gmail.com>

# Uncomment to change locale to fr_FR
# RUN localedef -i fr_FR -c -f UTF-8 -A /usr/share/locale/locale.alias fr_FR.UTF-8
# ENV LANG fr_FR.utf8

RUN apt-get update && apt-get install -y postgresql-9.5-postgis-2.2 postgis \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

# Create extensions for PostGIS
COPY create-ext-postgis.sql docker-entrypoint-initdb.d/
