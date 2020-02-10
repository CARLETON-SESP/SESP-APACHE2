# SESP-APACHE2

https://hub.docker.com/_/httpd
NOTE: CHANGE PATH TO REPO IN DOCKER VOLUME
docker build -t sespsyscon/sesp-apache .
docker run -dit --name sesp-apache -p 8082:80 -v $(pwd)/cgi-scripts:/usr/local/apache2/cgi-bin -v /PATH_TO_REPO/SESP-Web-UI/src/chart-configs:/usr/local/apache2/javascript-files sespsyscon/sesp-apache

docker run -dit --name sesp-apache -p 8082:80 -v $(pwd)/cgi-scripts:/usr/local/apache2/cgi-bin sespsyscon/sesp-apache

To customize the configuration of the httpd server, first obtain the upstream default configuration from the container:
COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf

docker run --rm httpd:2.4 cat /usr/local/apache2/cgi-bin/printenv > $(pwd)/cgi-scripts/printenv
docker run --rm httpd:2.4 cat /usr/local/apache2/cgi-bin/printenv.vbs > $(pwd)/cgi-scripts/printenv.vbs
docker run --rm httpd:2.4 cat /usr/local/apache2/cgi-bin/printenv.wsf > $(pwd)/cgi-scripts/printenv.wsf
docker run --rm httpd:2.4 cat /usr/local/apache2/cgi-bin/test-cgi > $(pwd)/cgi-scripts/test-cgi

