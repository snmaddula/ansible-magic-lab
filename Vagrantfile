########################################################
############## Ansible & AWX Lab Setup #################
########################################################
Vagrant.configure("2") do |config|
  
  config.vm.box = "snmaddula/ubuntu"
  config.vm.box_version = "14.04"
  config.vm.box_check_update = false
  config.vm.network "private_network", type: "dhcp"
  
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  end
  
  config.vm.provision "shell", inline: <<-SHELL
    cd /vagrant && chmod +x docker-compose && ./docker-compose up -d
    ufw disable
  SHELL  

end
