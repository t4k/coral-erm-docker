FROM php:5.6-apache
RUN apt-get update && apt-get install php5-mysql -y
RUN docker-php-ext-install gettext mysqli

COPY config/php.ini /usr/local/etc/php/conf.d/

COPY CORAL-Main/ /var/www/html/

COPY auth/ /var/www/html/auth
COPY licensing/ /var/www/html/licensing
COPY management/ /var/www/html/management
COPY organizations/ /var/www/html/organizations
COPY terms/ /var/www/html/terms
COPY reports/ /var/www/html/reports
COPY resources/ /var/www/html/resources
COPY usage/ /var/www/html/usage

