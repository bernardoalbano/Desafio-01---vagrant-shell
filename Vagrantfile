Vagrant.configure("2") do |config|

    config.vm.box = "ubuntu/bionic64"
    config.vm.box_check_update = false
    config.vm.boot_timeout = 600
    config.vm.network "public_network"
    config.vm.network "forwarded_port", guest: 80, host: 8070
    config.vm.provision "shell", path: "script.sh"
    config.vm.synced_folder "site/", "/var/www/html"



    config.vm.provider "virtualbox" do |vb|
        vb.name = "desafio01"
        vb.memory = 1024
        vb.cpus = 2
        vb.customize ["modifyvm", :id, "--groups", "/Desafio01-vagrant-shell"]
      end

end