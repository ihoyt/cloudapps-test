FROM httpd:alpine

USER root

WORKDIR /var/www/html

COPY . /var/www/html

EXPOSE 80

RUN a2enmod rewrite