# Use a imagem base do WordPress
FROM wordpress:latest

# Atualize os pacotes e instale o apt-utils
RUN apt-get update && \
    apt-get install -y apt-utils

# Instale o cliente MySQL sem interatividade
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y default-mysql-client

# Configure o usuário e senha do banco de dados MySQL
ENV WORDPRESS_DB_USER="luciosamoraes"
ENV WORDPRESS_DB_PASSWORD="168425Lsa@@"
