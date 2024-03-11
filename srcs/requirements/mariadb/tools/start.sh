#!/bin/sh

echo "[DB config] Configuring MariaDB..."

#!/bin/sh

# Check if the mysql database exists
if [ ! -d "/var/lib/mysql/mysql" ]; then
    # Initialize MariaDB
    mysql_install_db --user=mysql --datadir=/var/lib/mysql
fi

# Start MariaDB
exec mysqld_safe --datadir=/var/lib/mysql --user=mysql