FROM php:5.6.38-apache

RUN apt-get update && apt-get install -y libpq-dev && docker-php-ext-install pdo pdo_mysql

RUN a2enmod rewrite

COPY . /var/www/html