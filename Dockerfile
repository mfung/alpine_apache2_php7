FROM alpine:latest

LABEL maintainer="Meng Fung <meng.apps@gmail.com>"
LABEL org.label-schema.name="Alpine Apache2 PHP7" \
      org.label-schema.description="Apache2 and PHP7 with most extensions" \
      org.label-schema.url="https://hub.docker.com/r/mengfung/alpine-apache2-php7/" \
      org.label-schema.vcs-url="" \
      org.label-schema.vendor="Meng Fung" \
      org.label-schema.version="1.0" \
      org.label-schema.schema-version="1.0"

RUN apk add --update --no-cache \
    openrc \
    openssl \
    curl \
    imagemagick \
    gd \
    libmcrypt \
    php7-common \
    php7-dev \
    php7-fpm \
    php7-mysqlnd \
    php7-pgsql \
    php7-sqlite3 \
    php7-redis \
    php7-apcu \
    php7-intl \
    php7-imagick \
    php7-mcrypt \
    php7-json \
    php7-gd \
    php7-curl \
    php7-pdo \
    php7-pdo_mysql \
    php7-iconv \
    php7-mbstring \
    php7-zlib \
    php7-phar \
    php7 \
    apache2 \
    php7-apache2

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer

RUN rc-update add apache2