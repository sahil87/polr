#!/bin/sh
cd /src
php artisan migrate -n --force
php artisan db:seed -n --force

#To remove default nginx config set in richarvey/nginx-php-fpm docker at start
rm /etc/nginx/sites-enabled/default.conf
nginx -s reload
