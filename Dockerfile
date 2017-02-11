FROM richarvey/nginx-php-fpm:php71

#Install Emacs
RUN apk add --no-cache \
            --repository http://dl-3.alpinelinux.org/alpine/edge/community/ \
            emacs

COPY . /src
COPY polr.nginx.conf /etc/nginx/sites-enabled
COPY scripts /var/www/html/scripts

RUN cd /src && \
    cp .env.docker .env && \
    composer install -n -d /src && \
    chown -R nginx:nginx /src
