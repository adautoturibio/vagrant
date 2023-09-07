Vagrant.configure("2") do |config|

  config.vm.define "vm1" do |vm1|
    vm1.vm.box = "ubuntu/bionic64"  # Box (imagem base) a ser usada
    vm1.vm.hostname = "servidor-web"
    vm1.vm.network "private_network", type: "static", ip: "192.168.50.10"  # Configuração de rede
    vm1.vm.provider "virtualbox" do |vb|  # Provedor de virtualização
      vb.memory = "1024"  # Quantidade de memória RAM
      vb.cpus = 1  # Número de CPUs
    vm1.vm.provision "shell", path: "shell/vm1.sh" # Arquivo shell a ser lido e executado
    vm1.vm.synced_folder "/var/www/html", "/var/www/html" # Pasta compartilhada
    end
  end

  
  config.vm.define "vm2" do |vm2|
    vm2.vm.box = "ubuntu/bionic64"  
    vm2.vm.hostname = "banco-mysql"
    vm2.vm.network "private_network", type: "static", ip: "192.168.50.11"  
    vm2.vm.provider "virtualbox" do |vb| 
      vb.memory = "1024"  
      vb.cpus = 1  
    vm2.vm.provision "shell", path: "shell/vm2.sh" 
    end
  end


  config.vm.define "vm3" do |vm3|
    vm3.vm.box = "ubuntu/bionic64" 
    vm3.vm.hostname = "gateway"
    vm3.vm.network "private_network", type: "static", ip: "192.168.50.12"
    vm3.vm.network "public_network", type: "dhcp", bridge: "enp1s0"
    vm3.vm.provider "virtualbox" do |vb|  
      vb.memory = "512" 
      vb.cpus = 1 
    vm3.vm.provision "shell", path: "shell/vm3.sh" 
    end
  end
end


