FROM systemseed/codeception

RUN composer --working-dir=/repo require symfony/yaml:~3.4.5 flow/jsonpath:0.4.0 && \
    composer --working-dir=/repo config repositories.repo-name vcs \
    https://github.com/droptica/codeception-drupal-bootstrap && \
    composer --no-interaction --working-dir=/repo require droptica/codeception-drupal-bootstrap:dev-develop
