FROM alpine:3.18

RUN apk update && apk upgrade &&\
	apk add php81 php81-fpm php81-bcmath php81-bz2 php81-calendar php81-cli php81-ctype \
			php81-curl php81-dom php81-exif php81-fileinfo php81-gd php81-gmp \
			php81-iconv php81-imap php81-intl php81-json php81-mbstring \
			php81-mysqli php81-mysqlnd php81-openssl php81-pcntl php81-pdo php81-pdo_mysql \
			php81-pdo_pgsql php81-pdo_sqlite php81-pgsql php81-phar php81-posix php81-session \
			php81-shmop php81-simplexml php81-soap php81-sockets php81-sodium php81-sqlite3 \
			php81-sysvsem php81-sysvshm php81-tokenizer php81-xml php81-xmlreader php81-xmlwriter \
			php81-xsl php81-zip php81-zlib mariadb-client


# Bypass 'ERROR: Unable to create the PID file (/run/php/php7.4-fpm.pid).: No such file or directory (2)'
RUN mkdir -p /var/www/html /run/php/

COPY conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf
RUN chmod 755 /etc/php/7.4/fpm/pool.d/www.conf

COPY tools/configure-wordpress.sh /usr/local/bin/wordpress_config.sh
RUN chmod 755 /usr/local/bin/wordpress_config.sh

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

WORKDIR /var/www/html

EXPOSE 9000

ENTRYPOINT [ "sh", "/usr/local/bin/wordpress_config.sh" ]