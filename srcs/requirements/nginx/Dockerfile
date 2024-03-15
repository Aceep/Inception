# Use NGINX official image
FROM alpine:3.18

RUN		apk update && apk upgrade &&\
		apk add nginx
COPY	./conf/nginx.conf /etc/nginx/nginx.conf

RUN     mkdir -p /etc/nginx/ssl
# OPENSSL
RUN		apk add openssl
		
RUN     openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=alycgaut.42.fr/UID=login"

RUN		adduser -D -g 'www' www &&\
		chown -R www:www /run/nginx/ &&\
		chown -R www:www /etc/nginx/ssl/ &&\
		mkdir -p /var/www/html/ &&\
		chmod -R 755 /var/www/html/ &&\
		chown -R www:www /var/www/html/

EXPOSE	443

# Run nginx with daemon off, i.e. in the foreground since one container only
# has one service. This is best practice for Docker containers and/or debugging.
ENTRYPOINT	["nginx"]
CMD			["-g", "daemon off;"]