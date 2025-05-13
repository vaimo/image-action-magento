FROM wardenenv/php-fpm:8.2-xdebug3
USER root
WORKDIR /var/www/magento

# install composer
COPY --from=composer:2.2 /usr/bin/composer /usr/local/bin/composer

# copy composer.json and composer.lock
COPY composer.json /var/www/coding-standards/composer.json
COPY phpcs.xml /var/www/coding-standards/phpcs.xml
COPY phpmd.xml /var/www/coding-standards/phpmd.xml

# run composer install with the auth.json file as a secret
RUN cd /var/www/coding-standards && composer install