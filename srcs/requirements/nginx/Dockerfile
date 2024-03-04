# Use NGINX official image
FROM alpine:3.18

RUN apk update && apk add nginx

RUN mkdir -p /etc/nginx/ssl

RUN apk add openssl

# Generate a self-signed certificate
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=alycgaut.42.fr/UID=login"

RUN mkdir -p /var/run/nginx

# Copy the configuration file from the current directory and paste it inside the container
COPY conf/nginx.conf /etc/nginx/nginx.conf

#permissions
RUN mkdir -p /var/www/html
RUN chmod 755 /var/www/html

#RUN chown -R www-data:www-data /var/www/html

# Expose the port 443 (asked in the subject)
EXPOSE 443

# Run nginx to avoid the container to stop
CMD ["nginx", "-g", "daemon off;"]