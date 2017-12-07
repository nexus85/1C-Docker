FROM ubuntu:16.04

# install dependencies
RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
 	apache2 \ 
	&& rm -r /var/lib/apt/lists/*












ENV PLATFORM_VERSION=83
ENV SERVER_VERSION=8.3.10-2466

ADD *.deb /tmp/

RUN dpkg --install /tmp/1c-enterprise$PLATFORM_VERSION-common_${SERVER_VERSION}_amd64.deb \
 && dpkg --install /tmp/1c-enterprise$PLATFORM_VERSION-server_${SERVER_VERSION}_amd64.deb \
 && dpkg --install /tmp/1c-enterprise$PLATFORM_VERSION-ws_${SERVER_VERSION}_amd64.deb \
 && rm /tmp/*.deb \
 && mkdir --parent /var/log/1C /home/usr1cv8/.1cv8/1C/1cv8/conf \
 && chown --recursive usr1cv8:grp1cv8 /var/log/1C /home/usr1cv8


#ADD *.deb /tmp/
#RUN dpkg -i /tmp/*
#    && rm /tmp/*


#RUN dpkg --configure -a
#RUN apt-get update \
#	&& apt-get install -y -f \ 
#	&& rm -r /var/lib/apt/lists/*


VOLUME /etc/apache2/
VOLUME /var/www/html
RUN a2enmod rewrite



# Default command	
CMD ["apachectl", "-D", "FOREGROUND"]

# Ports
EXPOSE 80 443

