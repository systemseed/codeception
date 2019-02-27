FROM codeception/codeception:2.4.5

RUN apt-get update && \
    rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install \
    pdo_mysql

RUN yes | pecl install xdebug \
    && echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_enable=on" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_autostart=off" >> /usr/local/etc/php/conf.d/xdebug.ini

RUN composer --working-dir=/repo require symfony/yaml:~3.4.5 flow/jsonpath:0.4.0 && \
    composer --working-dir=/repo config repositories.repo-name vcs \
    https://github.com/droptica/codeception-drupal-bootstrap && \
    composer --working-dir=/repo require droptica/codeception-drupal-bootstrap:dev-develop
