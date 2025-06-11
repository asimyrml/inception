FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y php7.4 php7.4-fpm php7.4-mysql curl mariadb-client unzip && \
    mkdir -p /run/php && \
    apt-get clean

# FPM dışarıdan erişilebilir olmalı
RUN sed -i 's|listen = .*|listen = 0.0.0.0:9000|' /etc/php/7.4/fpm/pool.d/www.conf

RUN mkdir -p /var/www/html

RUN curl -O https://wordpress.org/latest.tar.gz && \
    tar -xzf latest.tar.gz && \
    mv wordpress/* /var/www/html/ && \
    rm -rf wordpress latest.tar.gz

COPY tools/ /usr/local/bin/
RUN chmod +x /usr/local/bin/setup.sh

WORKDIR /var/www/html

EXPOSE 9000

CMD ["php-fpm7.4", "-F"]
