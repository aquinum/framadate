#!/bin/bash

cd /var/www/html

gosu www-data php composer.phar install
gosu www-data mkdir -p tpl_c/

cp -f admin/htaccess.txt admin/.htaccess
cp -f htaccess.txt .htaccess