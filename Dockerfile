FROM httpd:alpine

RUN chown -hR www-data:www-data /usr/local/apache2/

USER www-data

# WORKDIR /var/www/html

# COPY . /var/www/html

COPY ./public-html/ /usr/local/apache2/htdocs/
# COPY ./public-html/ /tmp/htdocs/

COPY ./my-httpd.conf /usr/local/apache2/conf/httpd.conf


# RUN a2enmod rewrite