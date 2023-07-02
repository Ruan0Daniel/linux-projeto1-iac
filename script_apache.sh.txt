#!/bin/bash

echo "Atualizando o sistema ..."
sudo apt-get update -y
sudo apt-get updrade -y

echo " Instalando o Apache"
sudo apt install apache2 -y
sudo rm /var/www/html/index.html

echo "Instalando o unzip"
sudo apt-get install unzip -y

echo "Baixando o arquivo"

sudo wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
sudo unzip -d /tmp/main.zip
sudo cp -R /tmp/linux-site-dio-main/* /var/www/html 


