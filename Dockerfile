FROM httpd:alpine

USER www-data

COPY ./public-html/ /usr/local/apache2/htdocs/

COPY ./my-httpd.conf /usr/local/apache2/conf/httpd.conf

RUN chown -hR www-data:www-data /usr/local/apache2/


# RUN a2enmod rewrite