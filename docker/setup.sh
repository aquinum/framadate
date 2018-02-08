#!/bin/bash

set -ex;

apt-get update
apt-get install -y --no-install-recommends \
    gpg git wget ca-certificates zlib1g-dev zlib1g libicu57 libicu-dev

docker-php-ext-install -j$(nproc) zip intl pdo_mysql

bash /tmp/setup/install_gosu.sh
cd /var/www/html
bash /tmp/setup/install_composer.sh

apt-get purge -y --auto-remove zlib1g-dev libicu-dev
rm -rf /var/lib/apt/lists/*;

# Apache
a2enmod rewrite

mv /tmp/setup/entrypoint.sh /entrypoint.sh