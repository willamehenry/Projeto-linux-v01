#! /bin/bash

echo "Atualizando o sistema "
apt-get install update
apt-get install upgrade -y
apt-get install apache2 -y
apt-get install unzip -y


echo "Baixando o arquivo"
cd /tmp

wget https://github.com/willamehenry/Projeto-Dio/archive/refs/heads/main.zip

unzip main.zip
cd Projeto-Dio-main
cp -R * /var/www/html/

