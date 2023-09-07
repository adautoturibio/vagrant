#!/bin/bash
#sudo apt update #listar repositórios de atualização
#sudo apt upgrade # instalar atualizações
echo "route add default gw 192.168.50.12" >> /etc/network/interfaces # configurando a vm3 como gateway padrão
sudo apt-get install mysql-server -y # instalar servidor mysql
