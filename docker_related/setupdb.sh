#!/bin/sh
cd /src
sudo -u www-data php artisan migrate -n --force
sudo -u www-data php artisan db:seed -n --force
chown -R www-data /src/storage
