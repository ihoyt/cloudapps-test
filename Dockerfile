FROM httpd:alpine

USER root

COPY ./public-html/ /usr/local/apache2/htdocs/
COPY ./my-httpd.conf /usr/local/apache2/conf/httpd.conf
RUN mkdir /usr/local/apache2/logs
RUN touch /usr/local/apache2/logs/httpd.pid
RUN chown -hR www-data:www-data /usr/local/apache2/

USER www-data

# RUN a2enmod rewrite