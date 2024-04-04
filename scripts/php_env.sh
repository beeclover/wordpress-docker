#!/bin/bash

DEFAULT_VERSION="v1"

read -p "Enter the version (default: $DEFAULT_VERSION, e.g., v1, v2, v3): " input

VERSION="$DEFAULT_VERSION"
if [ ! -z "$input" ]; then
    VERSION="$input"
fi

echo "php_value upload_max_filesize 512M" >> volume/"$VERSION"/wp/.htaccess
echo "php_value post_max_size 512M" >> volume/"$VERSION"/wp/.htaccess
echo "php_value memory_limit 256M" >> volume/"$VERSION"/wp/.htaccess
echo "php_value max_execution_time 300" >> volume/"$VERSION"/wp/.htaccess
echo "php_value max_input_time 300" >> volume/"$VERSION"/wp/.htaccess
