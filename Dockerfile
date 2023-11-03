FROM wordpress:5.7.2-php7.4-apache

# Copiar o wp-config e outros arquivos
COPY ./wp-config.php /var/www/html/

# Permitir que o serviço Apache possa escrever/ler arquivos
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80
CMD ["apache2-foreground"]

