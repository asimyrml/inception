#!/bin/bash

# .env'den gelen env'leri oku
ADMIN_PASS=$(cat "$WP_ADMIN_PASSWORD_FILE")

# config yoksa oluştur
if [ ! -f /var/www/html/wp-config.php ]; then
    cp /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
    sed -i "s/database_name_here/$MYSQL_DATABASE/" wp-config.php
    sed -i "s/username_here/$MYSQL_USER/" wp-config.php
    sed -i "s/password_here/$(cat $MYSQL_PASSWORD_FILE)/" wp-config.php
    sed -i "s/localhost/mariadb/" wp-config.php
fi

# WordPress kurulumu
php-fpm -F
