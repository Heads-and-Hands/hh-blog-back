#!/bin/bash

cp wp-config.php.example /app/wp-config.php

wp config set DB_USER "$MYSQL_USER" --path=/app
wp config set DB_PASSWORD "$MYSQL_PASSWORD" --path=/app
wp config set FTP_USER "$WP_USER" --path=/app
wp config set FTP_PASS "$WP_USER_PASSWORD" --path=/app

wp theme install twentytwenty --path=/app

exit
