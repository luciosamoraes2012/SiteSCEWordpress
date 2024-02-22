# Use a imagem oficial do WordPress como base
FROM wordpress:latest

# Instalar o apt-utils para evitar o erro debconf
RUN apt-get update && apt-get install -y apt-utils

# Expor a porta 80 para acessar o WordPress via HTTP
EXPOSE 80

# Instalar o cliente MySQL
RUN apt-get install -y default-mysql-client

# Definir as variáveis de ambiente para o WordPress
ENV WORDPRESS_DB_HOST=localhost
ENV WORDPRESS_DB_NAME=wordpress
ENV WORDPRESS_DB_USER=luciosamoraes
ENV WORDPRESS_DB_PASSWORD=168425Lsa@@

# Copiar o script de inicialização do banco de dados para o diretório de inicialização do MySQL
COPY init.sql /docker-entrypoint-initdb.d/
