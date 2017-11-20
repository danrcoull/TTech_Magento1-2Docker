FROM php:7

MAINTAINER Daniel Coull <ttechitsolutions@gmail.com>

RUN apt-get update && apt-get install mysql-client -y

RUN docker-php-ext-install pdo 
RUN docker-php-ext-install pdo_mysql

RUN curl http://files.magerun.net/n98-magerun-latest.phar -o /n98-magerun.phar
RUN chmod +x /n98-magerun.phar

RUN curl http://files.magerun.net/n98-magerun2-latest.phar -o /n98-magerun2.phar
RUN chmod +x /n98-magerun2.phar

# Add our magerun wrapper
COPY cli.sh /cli.sh
RUN chmod +x /cli.sh

# Allow for magerun commands to specified
ENTRYPOINT [ "/cli.sh" ]
