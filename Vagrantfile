Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"  # Box (imagem base) a ser usada
  config.vm.network "private_network", ip: "192.168.50.10"  # Configuração de rede
  config.vm.provider "virtualbox" do |vb|  # Provedor de virtualização
    vb.memory = "1024"  # Quantidade de memória RAM
    vb.cpus = 2  # Número de CPUs
  config.vm.provision "shell", path: "shell/vm1.sh" # Arquivo shell a ser lido e executado
  end
end

