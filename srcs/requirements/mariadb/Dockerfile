FROM	alpine:3.18

# Install MariaDB
RUN		apk update && apk upgrade &&\
		apk add mariadb mariadb-client

RUN    mkdir -p /run/mysqld && chown -R mysql:mysql /run/mysqld && chmod 755 /run/mysqld

# Copy MariaDB configuration files
COPY    ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY	./tools/start.sh /tmp/start.sh
RUN		chmod +x /tmp/start.sh

EXPOSE	3306

# Run MariaDB configuration script as entry point
ENTRYPOINT	[ "sh", "/tmp/start.sh" ]