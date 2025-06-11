FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y mariadb-server bash && \
    apt-get clean

COPY tools/ /tools/
RUN chmod +x /tools/setup.sh

VOLUME /var/lib/mysql

ENTRYPOINT ["bash", "/tools/setup.sh"]
