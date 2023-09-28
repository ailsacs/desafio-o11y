#!/usr/bin/bash
echo "- First step"
#instalando gnome-terminal
sudo apt install gnome-terminal
#baixando e instalando Docker Compose
echo "- dawn & install Docker Compose"
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod 754 /usr/local/bin/docker-compose

echo "- second step"
#executando pip install
pip install Flask prometheus_client
pip install python-decouple
#executando conteiners docker isola
cd ./docker-compose 
sudo docker-compose up -d
#Script a ser executado o server
$SHELL ~/desafio-o11y/server.sh
