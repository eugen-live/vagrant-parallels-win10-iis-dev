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

  config.vm.provision "shell", inline: "Set-MpPreference -DisableRealtimeMonitoring $true; Set-ItemProperty -Path 'HKLM:/SOFTWARE/Policies/Microsoft/Windows Defender' -Name DisableAntiSpyware -Value 1"
  config.vm.provision "shell", inline: "choco install git -y"
  config.vm.provision :reload  
  config.vm.provision "shell", inline: "choco install cake.portable -y"
  config.vm.provision :reload
  config.vm.provision "shell", inline: "choco install nuget.commandline -y"
  config.vm.provision :reload
  config.vm.provision "shell", inline: "choco install netfx-4.7.1-devpack -y"
  config.vm.provision :reload
  config.vm.provision "shell", inline: "choco install netfx-4.8-devpack -y"
  config.vm.provision :reload
  config.vm.provision "shell", inline: "choco install dotnetcore-sdk -y"
  config.vm.provision :reload
  config.vm.provision "shell", inline: "choco install nodejs-lts --version=10.15.3 -y"
  config.vm.provision :reload
  config.vm.provision "shell", inline: "choco install visualstudio2019community -y"
  config.vm.provision :reload
  config.vm.provision "shell", inline: "choco install visualstudio2019buildtools -y"
  config.vm.provision :reload
  config.vm.provision "shell", inline: "choco install visualstudio2019-workload-manageddesktop -y"
  config.vm.provision :reload
  config.vm.provision "shell", inline: "choco install visualstudio2019-workload-netweb -y"
  config.vm.provision :reload
  config.vm.provision "shell", inline: "choco install visualstudio2019-workload-node -y"
  config.vm.provision :reload
  config.vm.provision "shell", inline: "choco install visualstudio2019-workload-data -y"
  config.vm.provision :reload
  config.vm.provision "shell", inline: "choco install visualstudio2019-workload-visualstudioextension -y"
  config.vm.provision :reload
  config.vm.provision "shell", inline: "choco install visualstudio2019-workload-netcoretools -y"
  config.vm.provision :reload
  config.vm.provision "shell", inline: "choco install visualstudio2019-workload-netcorebuildtools -y"
  config.vm.provision :reload
  config.vm.provision "shell", inline: "choco install visualstudio2019-workload-webbuildtools -y"
  config.vm.provision :reload
  config.vm.provision "shell", inline: "choco install visualstudio2019-workload-manageddesktopbuildtools -y"
  config.vm.provision :reload

  config.vm.provision "shell", inline: "Enable-WindowsOptionalFeature -online -featurename IIS-WebServerRole, IIS-Webserver, IIS-ManagementConsole, IIS-ApplicationDevelopment, IIS-NetFxExtensibility45, IIS-ASPNET45, IIS-ISAPIExtensions, IIS-ISAPIFilter, IIS-DefaultDocument, IIS-StaticContent, IIS-Performance, IIS-RequestFiltering"
  config.vm.provision :reload
  #[Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\vagrant\scripts\ops\", "Machine")
  #[Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\Windows\System32\inetsrv\", "Machine")

  #config.vm.synced_folder '', '/code'
end
