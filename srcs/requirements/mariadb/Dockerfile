FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y mariadb-server && \
    apt-get clean

COPY tools/ /docker-entrypoint-initdb.d/

VOLUME /var/lib/mysql

CMD ["mysqld_safe"]
FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y mariadb-server && \
    apt-get clean

COPY tools/ /docker-entrypoint-initdb.d/

VOLUME /var/lib/mysql

CMD ["mysqld_safe"]
