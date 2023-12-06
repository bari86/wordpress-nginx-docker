# Use the official WordPress image as the base

# Wordpress PHP8.2 using FPM
FROM wordpress:6.4.1-php8.2-fpm

# Wordpress PHP8.2 using FPM
# FROM wordpress:6.2.2-php8.2-fpm

# Wordpress PHP8.1 using FPM
# FROM wordpress:6.2.2-php8.1-fpm

# Install system dependencies and PHP Redis extension
RUN apt-get update && apt-get install -y libzip-dev && \
    pecl install redis && \
    docker-php-ext-enable redis && \
    docker-php-ext-install zip