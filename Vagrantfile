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
  config.vm.provision "shell", name: "git", inline: "choco install git --yes --no-progress --limitoutput"
  config.vm.provision :reload
  config.vm.provision "shell", name: "cake", inline: "choco install cake.portable --yes --no-progress --limitoutput"
  config.vm.provision "shell", name: "nuget", inline: "choco install nuget.commandline --yes --no-progress --limitoutput"
  config.vm.provision :reload
  config.vm.provision "shell", name: "netfx-4.7.1-devpack", inline: "choco install netfx-4.7.1-devpack --yes --no-progress --limitoutput"
  config.vm.provision :reload
  config.vm.provision "shell", name: "netfx-4.7.2-devpack", inline: "choco install netfx-4.7.2-devpack --yes --no-progress --limitoutput"
  config.vm.provision :reload
  config.vm.provision "shell", name: "netfx-4.8-devpack", inline: "choco install netfx-4.8-devpack --yes --no-progress --limitoutput"
  config.vm.provision :reload
  config.vm.provision "shell", name: "dotnetcore-sdk", inline: "choco install dotnetcore-sdk --yes --no-progress --limitoutput"
  config.vm.provision :reload
  config.vm.provision "shell", name: "nodejs", inline: "choco install nodejs-lts --version=10.15.3 --yes --no-progress --limitoutput"
  config.vm.provision :reload
  config.vm.provision "shell", name: "visualstudio2019community", inline: "choco install visualstudio2019community --yes --no-progress --limitoutput"
  config.vm.provision :reload
  config.vm.provision "shell", name: "visualstudio2019buildtools", inline: "choco install visualstudio2019buildtools --yes --no-progress --limitoutput"
  config.vm.provision :reload
  config.vm.provision "shell", name: "visualstudio2019-workload-manageddesktop", inline: "choco install visualstudio2019-workload-manageddesktop --yes --no-progress --limitoutput"
  config.vm.provision :reload
  config.vm.provision "shell", name: "visualstudio2019-workload-netweb", inline: "choco install visualstudio2019-workload-netweb --yes --no-progress --limitoutput"
  config.vm.provision :reload
  config.vm.provision "shell", name: "visualstudio2019-workload-node", inline: "choco install visualstudio2019-workload-node --yes --no-progress --limitoutput"
  config.vm.provision "shell", name: "visualstudio2019-workload-data", inline: "choco install visualstudio2019-workload-data --yes --no-progress --limitoutput"
  config.vm.provision :reload
  config.vm.provision "shell", name: "visualstudio2019-workload-visualstudioextension", inline: "choco install visualstudio2019-workload-visualstudioextension --yes --no-progress --limitoutput"
  config.vm.provision :reload
  config.vm.provision "shell", name: "visualstudio2019-workload-netcoretools", inline: "choco install visualstudio2019-workload-netcoretools --yes --no-progress --limitoutput"
  config.vm.provision :reload
  config.vm.provision "shell", name: "visualstudio2019-workload-netcorebuildtools", inline: "choco install visualstudio2019-workload-netcorebuildtools --yes --no-progress --limitoutput"
  config.vm.provision :reload
  config.vm.provision "shell", name: "visualstudio2019-workload-webbuildtools", inline: "choco install visualstudio2019-workload-webbuildtools --yes --no-progress --limitoutput"
  config.vm.provision :reload
  config.vm.provision "shell", name: "visualstudio2019-workload-manageddesktopbuildtools", inline: "choco install visualstudio2019-workload-manageddesktopbuildtools --yes --no-progress --limitoutput"
  config.vm.provision :reload

  config.vm.provision "shell", inline: "Enable-WindowsOptionalFeature -online -featurename IIS-WebServerRole, IIS-Webserver, IIS-ManagementConsole, IIS-ApplicationDevelopment, IIS-NetFxExtensibility45, IIS-ASPNET45, IIS-ISAPIExtensions, IIS-ISAPIFilter, IIS-DefaultDocument, IIS-StaticContent, IIS-Performance, IIS-RequestFiltering"
  config.vm.provision :reload
  #[Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\vagrant\scripts\ops\", "Machine")
  #[Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\Windows\System32\inetsrv\", "Machine")

  #config.vm.synced_folder '', '/code'
end
