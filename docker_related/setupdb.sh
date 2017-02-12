#!/bin/sh
cd /src
php artisan migrate -n --force
php artisan db:seed -n --force
chown -R www-data /src/storage