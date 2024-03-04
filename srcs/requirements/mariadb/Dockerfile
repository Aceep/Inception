FROM alpine:3.18

# Update the package list and install mariadb
RUN apk update && apk add openrc mariadb mariadb-client mysql mysql-client

# Create the directory for the mariadb database
RUN mkdir -p /var/run/mysql
RUN chmod 755 /var/run/mysql
RUN chown -R mysql:mysql /var/run/mysql

# Copy the mariadb configuration file
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

# Copy the script that will start the mariadb service
COPY ./tools/start.sh start.sh

RUN chmod 755 start.sh

EXPOSE 3306

CMD ["sh", "start.sh"]
