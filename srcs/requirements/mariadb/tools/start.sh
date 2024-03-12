#!/bin/sh

echo "[DB config] Configuring MariaDB..."

# Check if the mysql database exists
echo "CREATING database: ${SQL_DATABASE}"
mysql -e "CREATE DATABASE IF NOT EXISTS ${SQL_DATABASE};"
mysql -e "CREATE USER IF NOT EXISTS '${SQL_USER}'@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
mysql -e "GRANT ALL PRIVILEGES ON ${SQL_DATABASE}.* TO '${SQL_USER}'@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';"
sleep 1

mysqladmin -u root -p${SQL_ROOT_PASSWORD} shutdown
echo "Database ready"

# Start MariaDB
#exec mysqld_safe --datadir=/var/lib/mysql --user=mysql