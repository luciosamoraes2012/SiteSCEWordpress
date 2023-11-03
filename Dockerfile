Dockerfile
FROM wordpress:5.7.2-php7.4-apache

# Copy the wp-config and other files
COPY wp-config.php /var/www/html/

# Allow Apache service to read/write files
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80
CMD ["apache2-foreground"]
