Vagrant.configure("2") do |config|
  config.vm.box = "geerlingguy/centos7"
  config.vm.network "private_network", ip: "192.168.56.150"
  config.vm.network "forwarded_port", guest: 80, host: 80, host_ip: "127.0.0.1"
  config.vm.provider "virtualbox" do |vb|
   vb.memory = "2048"
 end
 config.vm.provision "shell", path: "install_scripts/docker.sh"
 config.vm.provision "shell", path: "install_scripts/os_dep.sh"
end