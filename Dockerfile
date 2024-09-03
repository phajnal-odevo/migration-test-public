FROM php:8.1-cli-alpine
# add some change
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
RUN composer require --dev "phpstan/phpstan" "squizlabs/php_codesniffer=*" "vimeo/psalm" "phpunit/phpunit"
