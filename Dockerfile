FROM httpd:2.4
# COPY ./public-html/ /usr/local/apache2/htdocs/
COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf
RUN apt-get update
RUN apt-get install python
