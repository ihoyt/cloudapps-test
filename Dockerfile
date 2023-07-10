FROM httpd:alpine

USER www-data

# WORKDIR /var/www/html

# COPY . /var/www/html

COPY ./public-html/ /usr/local/apache2/htdocs/

# COPY ./my-httpd.conf /usr/local/apache2/conf/httpd.conf
COPY ./my-httpd.conf /tmp/conf/httpd.conf
# EXPOSE 8080

# RUN a2enmod rewrite