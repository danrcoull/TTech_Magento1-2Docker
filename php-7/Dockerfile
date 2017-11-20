FROM php:7-fpm 

MAINTAINER Daniel Coull <ttechitsolutions@gmail.com>

RUN apt-get update
RUN apt-get install -y apt-utils wget
RUN apt-get upgrade -y

# Install opcache 
RUN docker-php-ext-install opcache

# Install APCu 
RUN pecl install apcu
RUN echo "extension=apcu.so" > /usr/local/etc/php/conf.d/apcu.ini

# Install bcmath 
RUN docker-php-ext-install bcmath

# Install bz2 
RUN apt-get install -y libbz2-dev 
RUN docker-php-ext-install bz2

# Install GD 
RUN apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng12-dev
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
RUN docker-php-ext-install gd

# Install mbstring 
RUN docker-php-ext-install mbstring

# Install curl 
RUN apt-get install -y libcurl4-openssl-dev \
    && docker-php-ext-install curl

# Install mcrypt 
RUN apt-get install -y libmcrypt-dev
RUN docker-php-ext-install mcrypt

# Install PDO 
# RUN apt-get install -y freetds-dev php5-sybase 
RUN docker-php-ext-install pdo 
RUN docker-php-ext-install pdo_mysql
# RUN docker-php-ext-install pdo_oci 
# RUN docker-php-ext-install pdo_odbc 
RUN apt-get install -y libpq-dev
RUN docker-php-ext-install pdo_pgsql
# RUN apt-get install -y libsqlite3-dev 
# RUN docker-php-ext-install pdo_sqlite 

# Install phpredis 2.2.7 
RUN apt-get install -y unzip
WORKDIR /root
RUN wget https://github.com/phpredis/phpredis/archive/3.1.4.zip && \ 
    unzip 3.1.4.zip && cd phpredis-3.1.4 && \ 
    phpize && \
   ./configure && \
    make && make install

RUN echo "extension=redis.so" > /usr/local/etc/php/conf.d/redis.ini

# Install ftp 
RUN docker-php-ext-install ftp

# Install intl 
RUN apt-get install -y libicu-dev

# Install xdebug 
RUN pecl install xdebug
RUN echo "zend_extenstion=/usr/local/lib/php/extensions/no-debug-non-zts-20151012/xdebug.so" > /usr/local/etc/php/conf.d/xdebug.ini


# Install extensions through the scripts the container provides # Here we install the pdo_mysql extensions to access MySQL. 
RUN docker-php-ext-install pdo_mysql
RUN usermod -u 1000 www-data
RUN echo 'date.timezone="GMT"' >> /usr/local/etc/php/conf.d/date.ini
RUN echo 'opcache.enable=1' >> /usr/local/etc/php/conf.d/opcache.conf
RUN echo 'opcache.validate_timestamps=0' >> /usr/local/etc/php/conf.d/opcache.conf
RUN echo 'opcache.fast_shutdown=1' >> /usr/local/etc/php/conf.d/opcache.conf

WORKDIR /var/www/html
RUN rm -rf /var/www/html/*
RUN chmod u+rw /var/www/html

WORKDIR /usr/share/nginx/html
RUN rm -rf /usr/share/nginx/html/*
