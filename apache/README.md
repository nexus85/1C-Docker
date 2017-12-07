docker network create 1Q
docker run -d -p 80:80  -v apache:/etc/apache2 -v  html:/var/www/html--network=1Q --name web nexus85/apache24
/opt/1C/v8.3/x86_64/webinst -apache24 -wsdir torg1 -dir '/var/www/html/torg' -connStr 'Srvr="Cloud1C";Ref="torg.crm";' -confPath /etc/apache2/apache2.conf
