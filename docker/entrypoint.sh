#!/bin/bash

set -eux

htpasswd -nb ${ADMIN_USERNAME} ${ADMIN_PASSWORD} > /var/www/.htpasswd

# Install composer dependencies if the vendor dir is missing
# (likely during the first container startup in development)
if [ ! -d "/var/www/html/vendor" ];
then
    # Install composer if missing
    if [ ! -f "/var/www/html/composer.phar" ];
    then
        bash /tmp/setup/install_composer.sh
    fi
    gosu www-data php composer.phar install
fi

docker-php-entrypoint apache2-foreground