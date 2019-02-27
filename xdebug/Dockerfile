FROM codeception/codeception:2.5.2

ENV PHP_XDEBUG_DEFAULT_ENABLE=0 \
    PHP_XDEBUG_REMOTE_CONNECT_BACK=0 \
    PHP_XDEBUG_REMOTE_HOST=localhost \
    PHP_XDEBUG_REMOTE_ENABLE=0 \
    PHP_XDEBUG_REMOTE_AUTOSTART=0 \
    PHP_XDEBUG_IDEKEY=codecept-xdebug

RUN apt-get update && \
    rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install \
    pdo_mysql

RUN composer --no-interaction --working-dir=/repo require flow/jsonpath:0.4.0

EXPOSE 9000

COPY conf.d/* /usr/local/etc/php/conf.d/
