FROM codeception/codeception:4.1.21

RUN pecl install \
        xdebug-3.0.4 && \
    docker-php-ext-enable \
        xdebug

RUN apt-get update && \
    rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install \
    pdo_mysql

RUN composer --no-interaction --working-dir=/repo require flow/jsonpath:0.4.0 \
    hoa/console:^3.17 \
    browserstack/browserstack-local:^1.1 \
    mailslurp/mailslurp-client-php \
    codeception/robo-paracept:2.0.3 \
    consolidation/robo:3.0.12

EXPOSE 9000
