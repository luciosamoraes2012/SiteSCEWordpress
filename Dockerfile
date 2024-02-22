FROM wordpress:latest

# Atualiza os pacotes e instala o apt-utils
RUN apt-get update && \
    apt-get install -y apt-utils

# Instala o cliente MySQL sem interatividade
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y default-mysql-client
