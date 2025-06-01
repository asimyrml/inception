FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y php php-mysql curl mariadb-client unzip && \
    mkdir -p /run/php && \
    apt-get clean

RUN mkdir -p /var/www/html

RUN curl -O https://wordpress.org/latest.tar.gz && \
    tar -xzf latest.tar.gz && \
    mv wordpress/* /var/www/html/ && \
    rm -rf wordpress latest.tar.gz

COPY tools/ /usr/local/bin/
RUN chmod +x /usr/local/bin/setup.sh

WORKDIR /var/www/html

EXPOSE 9000

ENTRYPOINT ["php", "-S", "0.0.0.0:9000", "-t", "/var/www/html"]
