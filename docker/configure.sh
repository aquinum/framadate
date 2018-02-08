#!/bin/bash

chown -R www-data: /var/www/html

cd /var/www/html

gosu www-data php composer.phar install --no-dev --prefer-dist --classmap-authoritative
gosu www-data mkdir -p tpl_c/

cp -f admin/htaccess.txt admin/.htaccess
cp -f htaccess.txt .htaccess