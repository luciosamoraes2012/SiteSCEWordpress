# Use a imagem base do WordPress
FROM wordpress:latest

# Defina as variáveis de ambiente para configurar o banco de dados MySQL
ENV WORDPRESS_DB_HOST=localhost \
    WORDPRESS_DB_NAME=wordpress \
    WORDPRESS_DB_USER=luciosamoraes \
    WORDPRESS_DB_PASSWORD=168425Lsa@@

# Exponha a porta padrão do WordPress
EXPOSE 80

# Copie o script SQL de inicialização para dentro do contêiner
COPY init.sql /docker-entrypoint-initdb.d/
