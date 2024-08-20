FROM php:8.1-cli-alpine

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
COPY docker/tooling/ /
RUN composer require --dev "phpstan/phpstan" "squizlabs/php_codesniffer=*" "vimeo/psalm" "phpunit/phpunit"
