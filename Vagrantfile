Vagrant.configure("2") do |config|
  config.vm.define "p1" do |p1|
      p1.vm.box = "kwilczynski/ubuntu-18.04"
      p1.vm.hostname = "P1"
      p1.vm.provision "shell", path: "gen_provisioning"
      p1.vm.provision :shell do |shell|
            shell.privileged = true
            shell.inline = 'echo rebooting'
            shell.reboot = true
      end
      p1.vm.provision :reload
      p1.vm.network "private_network", ip: "172.16.150.90", virtualbox_intnet: "pe1p1"
      p1.vm.network "private_network", ip: "172.16.250.90", virtualbox_intnet: "pe2p1"
      p1.vm.provider "virtualbox" do |vbox|
            vbox.name = "P1"
            vbox.memory = 16384
            vbox.cpus = 4
            vbox.customize ["modifyvm", :id, "--chipset", "ich9"]
            vbox.customize ['modifyvm', :id, '--nested-hw-virt', 'on']
            vbox.customize ['modifyvm', :id, '--nictype2', '82545EM']
            vbox.customize ['modifyvm', :id, '--nicpromisc2', 'allow-vms']
            vbox.customize ['modifyvm', :id, '--nictype3', '82545EM']
            vbox.customize ['modifyvm', :id, '--nicpromisc3', 'allow-vms']
      end
      p1.vm.provision "file", source: "gen_frr_config.py", destination: "gen_frr_config.py"
      p1.vm.provision "shell", path: "l3vpn_provisioning"
  end
  config.vm.define "pe1" do |pe1|
      pe1.vm.box = "kwilczynski/ubuntu-18.04"
      pe1.vm.hostname = "PE1"
      pe1.vm.provision "shell", path: "gen_provisioning"
      pe1.vm.provision :reload
      pe1.vm.network "private_network", ip: "172.16.111.100", virtualbox_intnet: "pe1ce1"
      pe1.vm.network "private_network", ip: "172.16.112.100", virtualbox_intnet: "pe1ce2"
      pe1.vm.network "private_network", ip: "172.16.150.100", virtualbox_intnet: "pe1p1"
      pe1.vm.provider "virtualbox" do |vbox|
            vbox.name = "PE1"
            vbox.memory = 16384
            vbox.cpus = 4
            vbox.customize ["modifyvm", :id, "--chipset", "ich9"]
            vbox.customize ['modifyvm', :id, '--nested-hw-virt', 'on']
            vbox.customize ['modifyvm', :id, '--nictype2', '82545EM']
            vbox.customize ['modifyvm', :id, '--nicpromisc2', 'allow-vms']
            vbox.customize ['modifyvm', :id, '--nictype3', '82545EM']
            vbox.customize ['modifyvm', :id, '--nicpromisc3', 'allow-vms']
            vbox.customize ['modifyvm', :id, '--nictype4', '82545EM']
            vbox.customize ['modifyvm', :id, '--nicpromisc4', 'allow-vms']
      end
      pe1.vm.provision "file", source: "gen_frr_config.py", destination: "gen_frr_config.py"
      pe1.vm.provision "shell", path: "l3vpn_provisioning"
  end
  config.vm.define "pe2" do |pe2|
      pe2.vm.box = "kwilczynski/ubuntu-18.04"
      pe2.vm.hostname = "PE2"
      pe2.vm.provision "shell", path: "gen_provisioning"
     pe2.vm.provision :reload
      pe2.vm.network "private_network", ip: "172.16.211.100", virtualbox_intnet: "pe2ce3"
      pe2.vm.network "private_network", ip: "172.16.212.100", virtualbox_intnet: "pe2ce4"
      pe2.vm.network "private_network", ip: "172.16.250.100", virtualbox_intnet: "pe2p1"
      pe2.vm.provider "virtualbox" do |vbox|
            vbox.name = "PE2"
            vbox.memory = 16384
            vbox.cpus = 4
            vbox.customize ["modifyvm", :id, "--chipset", "ich9"]
            vbox.customize ['modifyvm', :id, '--nested-hw-virt', 'on']
            vbox.customize ['modifyvm', :id, '--nictype2', '82545EM']
            vbox.customize ['modifyvm', :id, '--nicpromisc2', 'allow-vms']
            vbox.customize ['modifyvm', :id, '--nictype3', '82545EM']
            vbox.customize ['modifyvm', :id, '--nicpromisc3', 'allow-vms']
            vbox.customize ['modifyvm', :id, '--nictype4', '82545EM']
            vbox.customize ['modifyvm', :id, '--nicpromisc4', 'allow-vms']
      end
      pe2.vm.provision "file", source: "gen_frr_config.py", destination: "gen_frr_config.py"
      pe2.vm.provision "shell", path: "l3vpn_provisioning"
  end
  config.vm.define "ce1" do |ce1|
      ce1.vm.box = "kwilczynski/ubuntu-20.04"
      ce1.vm.hostname = "CE1"
      ce1.vm.network "private_network", ip: "172.16.111.10", virtualbox_intnet: "pe1ce1"
      ce1.vm.provider "virtualbox" do |vbox|
            vbox.name = "CE1"
            vbox.memory = 16384
            vbox.cpus = 4
            vbox.customize ["modifyvm", :id, "--chipset", "ich9"]
            vbox.customize ['modifyvm', :id, '--nested-hw-virt', 'on']
            vbox.customize ['modifyvm', :id, '--nictype2', '82545EM']
            vbox.customize ['modifyvm', :id, '--nicpromisc2', 'allow-vms']
      end
      ce1.vm.provision "shell", path: "l3vpn_provisioning"
  end
  config.vm.define "ce2" do |ce2|
      ce2.vm.box = "kwilczynski/ubuntu-20.04"
      ce2.vm.hostname = "CE2"
      ce2.vm.network "private_network", ip: "172.16.112.10", virtualbox_intnet: "pe1ce2"
      ce2.vm.provider "virtualbox" do |vbox|
            vbox.name = "CE2"
            vbox.memory = 16384
            vbox.cpus = 4
            vbox.customize ["modifyvm", :id, "--chipset", "ich9"]
            vbox.customize ['modifyvm', :id, '--nested-hw-virt', 'on']
            vbox.customize ['modifyvm', :id, '--nictype2', '82545EM']
            vbox.customize ['modifyvm', :id, '--nicpromisc2', 'allow-vms']
      end
      ce2.vm.provision "shell", path: "l3vpn_provisioning"
  end
  config.vm.define "ce3" do |ce3|
      ce3.vm.box = "kwilczynski/ubuntu-20.04"
      ce3.vm.hostname = "CE3"
      ce3.vm.network "private_network", ip: "172.16.211.10", virtualbox_intnet: "pe2ce3"
      ce3.vm.provider "virtualbox" do |vbox|
            vbox.name = "CE3"
            vbox.memory = 16384
            vbox.cpus = 4
            vbox.customize ["modifyvm", :id, "--chipset", "ich9"]
            vbox.customize ['modifyvm', :id, '--nested-hw-virt', 'on']
            vbox.customize ['modifyvm', :id, '--nictype2', '82545EM']
            vbox.customize ['modifyvm', :id, '--nicpromisc2', 'allow-vms']
      end
      ce3.vm.provision "shell", path: "l3vpn_provisioning"
  end
  config.vm.define "ce4" do |ce4|
      ce4.vm.box = "kwilczynski/ubuntu-20.04"
      ce4.vm.hostname = "CE4"
      ce4.vm.network "private_network", ip: "172.16.212.10", virtualbox_intnet: "pe2ce4"
      ce4.vm.provider "virtualbox" do |vbox|
            vbox.name = "CE4"
            vbox.memory = 16384
            vbox.cpus = 4
            vbox.customize ["modifyvm", :id, "--chipset", "ich9"]
            vbox.customize ['modifyvm', :id, '--nested-hw-virt', 'on']
            vbox.customize ['modifyvm', :id, '--nictype2', '82545EM']
            vbox.customize ['modifyvm', :id, '--nicpromisc2', 'allow-vms']
      end
      ce4.vm.provision "shell", path: "l3vpn_provisioning"
  end
end
