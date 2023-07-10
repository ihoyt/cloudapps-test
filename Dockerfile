FROM php:8.2.1-apache

USER root

WORKDIR /var/www/html

COPY . /var/www/html

EXPOSE 80

RUN a2enmod rewrite