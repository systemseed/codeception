FROM codeception/codeception:2.5.2

RUN apt-get update && \
    rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install \
    pdo_mysql

RUN composer --no-interaction --working-dir=/repo require flow/jsonpath:0.4.0
