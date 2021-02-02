# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "eugen-live/win10-pro"

  config.vm.provider "parallels" do |vm|
    vm.memory = 8192
    vm.cpus = 6
  end

  config.vm.network :private_network, ip: "33.33.33.15"
  config.vm.network :forwarded_port, guest: 22, host: 3322, id: "ssh"

  config.ssh.shell = "cmd"

  config.vm.communicator = "winrm"

  config.vm.provision "shell", path: "provision/provision_vs.ps1"
  config.vm.provision :reload
  config.vm.provision "shell", path: "provision/provision_build_tool_1.ps1"
  config.vm.provision :reload
  config.vm.provision "shell", path: "provision/provision_build_tool_2.ps1"
  config.vm.provision "shell", path: "provision/provision_iis.ps1"
  #config.vm.provision "shell", path: "provision/provision_set_path.ps1"

  #config.vm.synced_folder '', '/code'
end
