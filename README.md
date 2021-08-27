# Image for codeception with xDebug v3.

## How to use xDebug?

1. Configure you IDE to use xDebug with 9003 port.
2. Configure PHP Web Page server in your IDE.
3. Run docker container with env variabls for xDebug config.

    ```yml
      codecept:
        environment:
          PHP_IDE_CONFIG: serverName=my-ide
          XDEBUG_MODE: develop,debug
          XDEBUG_CONFIG: 'client_host=host.docker.internal start_with_request=yes idekey=my-ide'

    ```
