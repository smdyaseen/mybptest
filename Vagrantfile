# BP Test

$prerequisites = <<SCRIPT
yum install -y ansible
SCRIPT

Vagrant.configure(2) do |config|
  config.vm.box = "centos/7"
  config.vm.hostname = "mybptest"
  config.vm.network "private_network", ip: "192.168.150.10"
  config.vm.provision "shell", inline: $prerequisites
    
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
  end
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook_docker.yml"
#    ansible.playbook = "playbook_nginx.yml"
    ansible.verbose = "v"
  end
end
