FROM httpd:alpine

USER root

# WORKDIR /var/www/html

# COPY . /var/www/html

COPY . /usr/local/apache2/htdocs/

EXPOSE 80

RUN a2enmod rewrite