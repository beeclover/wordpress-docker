#!/bin/bash

echo "php_value upload_max_filesize 512M" >> volume/wp/.htaccess
echo "php_value post_max_size 512M" >> volume/wp/.htaccess
echo "php_value memory_limit 256M" >> volume/wp/.htaccess
echo "php_value max_execution_time 300" >> volume/wp/.htaccess
echo "php_value max_input_time 300" >> volume/wp/.htaccess
