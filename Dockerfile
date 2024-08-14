# Use the official WordPress image as the base
# Currently supported PHP versions as on the 14 August 2024 are PHP 8.3 and PHP 8.2
# More information here: https://www.php.net/supported-versions.php

# Wordpress PHP8.3 using FPM
FROM wordpress:6.6.1-php8.3-fpm

# Wordpress PHP8.2 using FPM
# FROM wordpress:6.6.1-php8.2-fpm

# Install system dependencies and PHP Redis extension
RUN apt-get update && apt-get install -y libzip-dev && \
    pecl install redis && \
    docker-php-ext-enable redis && \
    docker-php-ext-install zip