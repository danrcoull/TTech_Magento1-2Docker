FROM php:7-fpm 

MAINTAINER Daniel Coull <ttechitsolutions@gmail.com>

RUN apt-get update

RUN curl http://files.magerun.net/n98-magerun-latest.phar -o /n98-magerun.phar
RUN chmod +x /n98-magerun.phar

RUN curl http://files.magerun.net/n98-magerun2-latest.phar -o /n98-magerun2.phar
RUN chmod +x /n98-magerun2.phar

# Add our magerun wrapper
COPY cli.sh /cli.sh
RUN chmod +x /cli.sh

# Allow for magerun commands to specified
ENTRYPOINT [ "/cli.sh" ]
