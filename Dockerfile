FROM alpine:edge
MAINTAINER Daniel Atkinson <hourd.tasa@gmail.com>
RUN apk --update add wget php php-phar php-zlib php-iconv php-dom php-xsl && \
  wget --no-check-certificate http://phpdox.de/releases/phpdox.phar && \
  chmod +x phpdox.phar && \
  mv phpdox.phar /bin/phpdox && \
  mkdir -p /var/www
WORKDIR /var/www
CMD /bin/phpdox
