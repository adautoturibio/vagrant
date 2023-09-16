# Documentação
O objetivo desta documentação é exibir o passo a passo para que está aplicação funcione!

## Pré requisitos

* Instalar o [Vagrant](https://developer.hashicorp.com/vagrant/downloads?product_intent=vagrant)
* Instalar o [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
  
## Implementação

* Clone o repositório para sua máquina através do comando 'git clone https://github.com/adautoturibio/vagrant.git' no seu repositório local
* Abra o terminal no mesmo local onde está o Vagrantfile
* Defina sua interface de rede no arquivos vm1.sh, vm2.sh e vm3.sh.
  
  > No meu caso, a minha interface de rede é a enp0s3. Se for também o seu caso, não é necessário alteração. Mas caso sua interface seja outra, é preciso que você altere a linha 2 desses arquivos, subistituindo "enp0s3" pelo nome da sua interface de rede física.
