# Documentação
O objetivo desta documentação é exibir o passo a passo para subir um ambiente virtual de 3 máquinas virtuais. A primeira sendo um servidor web e a segunda um banco de dados mysql, ambas com IP estático e privado. Já a terceira servirá como um gateway para que as outras duas VM's acessem a internet através dela. As máquinas serão provisionadas pelo Virtualbox e configuradas pelo Vagrant.

## Pré requisitos

* Instalar o [Vagrant](https://developer.hashicorp.com/vagrant/downloads?product_intent=vagrant)
* Instalar o [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
  
## Implementação

1) Clone o repositório para sua máquina através do comando `git clone https://github.com/adautoturibio/vagrant.git` no seu repositório local
2) Abra o terminal no mesmo local onde está o Vagrantfile
3) Defina sua interface de rede no arquivos vm1.sh, vm2.sh e vm3.sh.
  
  > No meu caso, a minha interface de rede é a enp0s3. Se for também o seu caso, não é necessário alteração. Mas caso sua interface seja outra, é preciso que você altere a linha 2 desses arquivos, subistituindo "enp0s3" pelo nome da sua interface de rede física.


4)  Suba as máquinas virtuais, através do comando `vagrant up`
5) Acesse as máquinas virtuais, através do comando `vagrant ssh <nome_da_maquina>`
   
  >  Lembre-se de executar esses comando no mesmo diretório do Vagratfile.


## Testes

* Para testar que o ambiente virtual está funcionado corretamente, basta usar o comando `ping google.com`nas VM's 1 e 2. Se elas estiverem conseguindo acessar a internet, está funcionado conforme o planejado.
  
* Para certificar que as VM's 1 e 2 estão acessando a internet através da terceira VM, basta ver se a rota padrão do IP está configurada com o mesmo IP da terceira VM, através do comando `ip route`ou `route -n`.
* Para testar se o Apache está funcionado corretamente na VM1, execute o comando `service apache2 status`.
* Para testar se o MySQL está funcionando corretaente na VM2, execute o comando `service mysql status`.
