# Derived from official mysql image (our base image)
FROM mysql

LABEL version="1.0"


# Add a database
ENV MYSQL_DATABASE configurator

ENV MYSQL_ROOT_PASSWORD=jackyjacky
ENV MYSQL_USER=mysql
ENV MYSQL_PASSWORD=mysql


# Add the content of the sql-scripts/ directory to your image
# All scripts in docker-entrypoint-initdb.d/ are automatically
# executed during container startup
COPY ./sql-scripts/native-pass /docker-entrypoint-initdb.d/
COPY ./sql-scripts/insertData.sql /tmp/

