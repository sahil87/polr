#!/bin/sh
cd /src
sudo -u www-data php artisan migrate -n --force
sudo -u www-data php artisan db:seed -n --force
#storage folder assumed to exist in polr code
sudo mkdir -p /src/storage; chown -R www-data /src/storage