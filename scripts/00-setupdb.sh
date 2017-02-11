#!/bin/sh
cd /src
php artisan migrate -n --force
