FROM httpd:alpine

RUN apk add libcap && chown -hR www-data:www-data /usr/local/apache2/ && \
  setcap 'cap_net_bind_service=+ep' /usr/local/apache2/bin/httpd

USER www-data

# WORKDIR /var/www/html

# COPY . /var/www/html

COPY ./public-html/ /usr/local/apache2/htdocs/
# COPY ./public-html/ /tmp/htdocs/

COPY ./my-httpd.conf /usr/local/apache2/conf/httpd.conf


# RUN a2enmod rewrite