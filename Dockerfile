FROM php:5.6-fpm

RUN echo "\n log_errors = on\n error_log = /var/log/nginx/php_err.log\n cgi.fix_pathinfo=0 \n date.timezone=America/Guatemala \n extension=pdo_mysql.so" > /usr/local/etc/php/conf.d/custom_php.ini && mkdir /var/log/nginx && touch /var/log/nginx/php_err.log
RUN apt-get update && apt-get install -y \
	git \
	zip \
	unzip \
  libfreetype6-dev \
  libjpeg62-turbo-dev \
  libmcrypt-dev \
  libpng12-dev \
  && docker-php-ext-install -j$(nproc) iconv mcrypt \
  && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
  && docker-php-ext-install -j$(nproc) gd \
  && docker-php-ext-install -j$(nproc) pdo pdo_mysql