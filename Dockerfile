FROM wordpress:php7.3-apache

RUN cp /usr/local/etc/php/php.ini-development /usr/local/etc/php/php.ini && \
     sed -E -i   's/upload_max_filesize = 2M/upload_max_filesize = 20M/g' /usr/local/etc/php/php.ini && \
     sed -E -i   's/post_max_size = 8M/post_max_size = 20M/g' /usr/local/etc/php/php.ini && \
     sed -E -i   's/whatever_option = 1234/whatever_option = 4321/g' /usr/local/etc/php/php.ini
