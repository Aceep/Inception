#!/bin/sh

sleep 3

    echo "\n==============================="
    echo "=== Wordpress configuration ==="
    echo "===============================\n"

if [ -f "/var/www/html/wp-config.php" ]
then
    # bypass the 'filesystem not reachable' after reboot without volume removal
    usermod -u 33 www && groupmod -g 33 www
    chown -R www:www /var/www/html/
    echo "==> wordpress is already installed and configured\n"
else
    	echo "[WP config] Setting up WordPress..."
	echo "[WP config] Updating WP-CLI..."
	wp cli update --yes --allow-root
	echo "[WP config] Downloading WordPress..."
	wp core download --allow-root
	echo "[WP config] Creating wp-config.php..."
	wp config create --dbname=${SQL_DATABASE} --dbuser=${SQL_USER} --dbpass=${SQL_PASSWORD} --dbhost=${SQL_HOST} --allow-root
	echo "[WP config] Installing WordPress core..."
	wp core install --url=$DOMAIN --title=${WP_TITLE} --admin_user=${WP_ADMIN} --admin_password=${WP_ADMIN_PASSWORD} --admin_email=${WP_ADMIN_EMAIL} --allow-root
	echo "[WP config] Creating WordPress default user..."
	wp user create $WP_USER ${WP_USER_EMAIL} --user_pass=${WP_USER_PASSWORD} --role=author --user_pass=$WP_USER_PASSWORD --allow-root


fi

# run the php process manager in foreground mode
exec /usr/sbin/php-fpm81 -F
