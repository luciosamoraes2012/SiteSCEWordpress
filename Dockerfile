# Use uma imagem oficial do WordPress
FROM wordpress:latest

# Instale o MySQL como um sistema de gerenciamento de banco de dados
RUN apt-get update \
    && apt-get install -y mysql-server

# Exponha a porta 80 para o servidor web
EXPOSE 80

# Inicie o Apache e o MySQL quando o contêiner for iniciado
CMD /etc/init.d/apache2 start && /etc/init.d/mysql start && bash
