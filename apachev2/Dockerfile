FROM ubuntu:16.04

# install dependencies
RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		apache2 \
	&& rm -r /var/lib/apt/lists/*


ADD *.deb /tmp/
RUN rm /tmp/*-nls_*.* \
    && dpkg -i /tmp/* \
    && rm /tmp/*

VOLUME /etc/apache2/
VOLUME /var/www/html
RUN a2enmod rewrite



# Default command	
CMD ["apachectl", "-D", "FOREGROUND"]

# Ports
EXPOSE 80 443

