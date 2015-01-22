VAGRANTFILE_API_VERSION = "2"

Vagrant.require_version ">= 1.6.3"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define "boot2docker"

  config.vm.box = "yungsang/boot2docker"

  config.vm.synced_folder ".", "/vagrant"

  config.vm.network :forwarded_port, guest: 3003, host: 8080
end

