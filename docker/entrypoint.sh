#!/bin/bash

set -eux

htpasswd -nb ${ADMIN_USERNAME} ${ADMIN_PASSWORD} > /var/www/.htpasswd

docker-php-entrypoint apache2-foreground