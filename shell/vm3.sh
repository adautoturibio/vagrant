#!/bin/bash
export INTERFACE="enp0s3"
#sudo apt update #listar repositórios de atualização
#sudo apt upgrade -y # instalar atualizações
echo 'net.ipv4.ip_forward=1' >> /etc/sysctl.conf && sysctl -p # habilitar o redirecionamento de pacotes no kernel da VM do gateway
iptables -t nat -A POSTROUTING -o  -j MASQUERADE # encaminhar o tráfego da rede externa para a Internet.
