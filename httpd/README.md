#docker run -dit --name my-apache-app -p 80:80 -p 443:443 -v httpd-conf:/usr/local/apache2/ nexus85/httpd:2.4
docker run -dit --name httpd-torg -p 80:80 -p 443:443 -v httpd-conf:/usr/local/apache2/ nexus85/httpd:2.4
