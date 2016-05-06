FROM php:5.6-apache
RUN apt-get update && apt-get install php5-mysql -y
RUN docker-php-ext-install gettext mysqli

COPY config/php.ini /usr/local/etc/php/conf.d/

COPY Coral/ /var/www/html/

