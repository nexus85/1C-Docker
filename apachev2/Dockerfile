FROM ubuntu:14.04
MAINTAINER nexus

ENV PLATFORM_VERSION=83
ENV SERVER_VERSION=8.3.10-2466

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -qq update \
	&& apt-get install -y apache2 \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*

ADD *.deb /tmp/
RUN rm /tmp/*-nls_*.* \
    && dpkg -i /tmp/* \
    && rm /tmp/*
#RUN /opt/1C/v8.3/x86_64/webinst -apache24 -wsdir torg.crm -dir '/var/www/html' -connStr 'Srvr="localhost";Ref="torg.crm";' -confPath /etc/apache2/apache2.conf


VOLUME /etc/apache2/
VOLUME /var/www/html
RUN a2enmod rewrite

COPY httpd-foreground /usr/local/bin/
WORKDIR /usr/local/bin/


#CMD /usr/sbin/apache2 start
CMD ["httpd-foreground"]




EXPOSE 80 443
