FROM richarvey/nginx-php-fpm:php71

COPY . /src
COPY polr.nginx.conf /etc/nginx/sites-enabled

RUN cd /src && \
    cp .env.docker .env && \
    composer install -n -d /src && \
    chown -R nginx:nginx /src

EXPOSE 81
