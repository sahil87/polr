FROM richarvey/nginx-php-fpm:php71

ENV WEBROOT=/src/public
COPY . /src

RUN cd /src && \
    cp .env.docker .env && \
    composer install -n -d /src && \
    chown -R nginx:nginx /src

EXPOSE 80
