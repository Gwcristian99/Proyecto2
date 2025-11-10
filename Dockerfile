from php:8.2-apache

copy ./var/www/html/

run chown -R www-data:www-data /var/www/html \
    && chown -R 755 /var/www/html

run docker-php-ext-install mysqli && docker-php-ext-enable mysqli

expose 80  