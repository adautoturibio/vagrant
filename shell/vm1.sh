#!/bin/bash
sudo apt update #listar repositórios de atualização
sudo apt upgrade # instalar atualizações
sudo apt-get install apache2 -y # instalar servidor apache
sudo mkdir -p /var/www/html # criar diretório do servidor web
echo "route add default gw 192.168.50.12" >> /etc/network/interfaces # configurando a vm3 como gateway padrão
sudo ip route add default via 192.168.50.12 #defininfo o ip da terceira vm como rota padrão
sudo iptables -t nat -A POSTROUTING -o enp0s3 -j MASQUERADE # configurando o NAT para traduzir e rotear corretamente