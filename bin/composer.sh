#!/bin/bash

# Install dependencies only for Docker.
set -xe

# Update packages and install composer and PHP dependencies.
# apt-get update -yqq
# apt-get install git libcurl4-gnutls-dev libicu-dev libmcrypt-dev libvpx-dev libjpeg-dev libpng-dev libxpm-dev zlib1g-dev libfreetype6-dev libxml2-dev libexpat1-dev libbz2-dev libgmp3-dev libldap2-dev unixodbc-dev libpq-dev libsqlite3-dev libaspell-dev libsnmp-dev libpcre3-dev libtidy-dev -yqq

# Compile PHP, include these extensions.
# docker-php-ext-install mbstring mcrypt pdo_mysql curl json intl gd xml zip bz2 opcache

# Install Composer and project dependencies.
export COMPOSER_CACHE_DIR="./tmp"
export COMPOSER_ALLOW_SUPERUSER="1"
curl -sS -k https://getcomposer.org/installer | php
php -n composer.phar install --prefer-dist -vvv