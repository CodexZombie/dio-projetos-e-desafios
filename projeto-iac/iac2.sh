#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y

echo "Instalando o Apache e o Unzip..."
apt-get install apache2 -y
apt-get install unzip -y

echo "Copiando a aplicação do repositório remoto..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Extraindo a aplicação..."
unzip main.zip

echo "Copiando a aplicação para o local do servidor do Apache..."
cd linux-site-dio-main
cp -r * /var/www/html
