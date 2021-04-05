Vagrant.configure("2") do |config|
  config.vm.define "p1" do |p1|
      p1.vm.box = "debian/buster64"
#     p1.vm.box = "kwilczynski/ubuntu-18.04"
      p1.vm.hostname = "P1"
      p1.vm.provision "shell", path: "gen_provisioning"
      p1.vm.provision :reload
      p1.vm.network "private_network", ip: "172.16.11.90", virtualbox_intnet: "pe1p1"
      p1.vm.network "private_network", ip: "172.16.21.90", virtualbox_intnet: "pe2p1"
      p1.vm.network "private_network", ip: "172.16.251.90", virtualbox_intnet: "p1p2"
      p1.vm.network "private_network", ip: "172.16.31.100", virtualbox_intnet: "p3p1"
      p1.vm.network "private_network", ip: "172.16.41.100", virtualbox_intnet: "p4p1"
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
            vbox.customize ['modifyvm', :id, '--nictype4', '82545EM']
            vbox.customize ['modifyvm', :id, '--nicpromisc4', 'allow-vms']
            vbox.customize ['modifyvm', :id, '--nictype5', '82545EM']
            vbox.customize ['modifyvm', :id, '--nicpromisc5', 'allow-vms']
            vbox.customize ['modifyvm', :id, '--nictype6', '82545EM']
            vbox.customize ['modifyvm', :id, '--nicpromisc6', 'allow-vms']
      end
      p1.vm.provision "file", source: "gen_frr_config.py", destination: "gen_frr_config.py"
      p1.vm.provision "shell", path: "l3vpn_provisioning"
  end
  config.vm.define "p2" do |p1|
      p2.vm.box = "debian/buster64"
#     p2.vm.box = "kwilczynski/ubuntu-18.04"
      p2.vm.hostname = "P2"
      p2.vm.provision "shell", path: "gen_provisioning"
      p2.vm.provision :reload
      p2.vm.network "private_network", ip: "172.16.12.90", virtualbox_intnet: "pe1p2"
      p2.vm.network "private_network", ip: "172.16.22.90", virtualbox_intnet: "pe2p2"
      p2.vm.network "private_network", ip: "172.16.251.100", virtualbox_intnet: "p1p2"
      p2.vm.network "private_network", ip: "172.16.32.100", virtualbox_intnet: "p3p2"
      p2.vm.network "private_network", ip: "172.16.42.100", virtualbox_intnet: "p4p2"
      p2.vm.provider "virtualbox" do |vbox|
            vbox.name = "P2"
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
            vbox.customize ['modifyvm', :id, '--nictype5', '82545EM']
            vbox.customize ['modifyvm', :id, '--nicpromisc5', 'allow-vms']
            vbox.customize ['modifyvm', :id, '--nictype6', '82545EM']
            vbox.customize ['modifyvm', :id, '--nicpromisc6', 'allow-vms']
      end
      p2.vm.provision "file", source: "gen_frr_config.py", destination: "gen_frr_config.py"
      p2.vm.provision "shell", path: "l3vpn_provisioning"
  end
  config.vm.define "p3" do |p1|
#      p3.vm.box = "debian/buster64"
      p3.vm.box = "kwilczynski/ubuntu-18.04"
      p3.vm.hostname = "P3"
      p3.vm.provision "shell", path: "gen_provisioning"
      p3.vm.provision :reload
      p3.vm.network "private_network", ip: "172.16.31.90", virtualbox_intnet: "p3p1"
      p3.vm.network "private_network", ip: "172.16.32.90", virtualbox_intnet: "p3p2"
      p3.vm.network "private_network", ip: "172.16.252.90", virtualbox_intnet: "p3p4"
      p3.vm.network "private_network", ip: "172.16.35.90", virtualbox_intnet: "p3p5"
      p3.vm.network "private_network", ip: "172.16.36.90", virtualbox_intnet: "p3p6"   
      p3.vm.provider "virtualbox" do |vbox|
            vbox.name = "P3"
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
            vbox.customize ['modifyvm', :id, '--nictype5', '82545EM']
            vbox.customize ['modifyvm', :id, '--nicpromisc5', 'allow-vms']
            vbox.customize ['modifyvm', :id, '--nictype6', '82545EM']
            vbox.customize ['modifyvm', :id, '--nicpromisc6', 'allow-vms']
      end
      p3.vm.provision "file", source: "gen_frr_config-vpp.py", destination: "gen_frr_config-vpp.py"
      p3.vm.provision "shell", path: "l3vpn_provisioning-vpp"
  end
  config.vm.define "p4" do |p1|
      p4.vm.box = "debian/buster64"
 #     p4.vm.box = "kwilczynski/ubuntu-18.04"
      p4.vm.hostname = "P4"
      p4.vm.provision "shell", path: "gen_provisioning"
      p4.vm.provision :reload
      p4.vm.network "private_network", ip: "172.16.41.90", virtualbox_intnet: "p4p1"
      p4.vm.network "private_network", ip: "172.16.42.90", virtualbox_intnet: "p4p2"
      p4.vm.network "private_network", ip: "172.16.252.100", virtualbox_intnet: "p3p4"
      p4.vm.network "private_network", ip: "172.16.45.90", virtualbox_intnet: "p4p5"
      p4.vm.network "private_network", ip: "172.16.46.90", virtualbox_intnet: "p4p6"   
      p4.vm.provider "virtualbox" do |vbox|
            vbox.name = "P4"
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
            vbox.customize ['modifyvm', :id, '--nictype5', '82545EM']
            vbox.customize ['modifyvm', :id, '--nicpromisc5', 'allow-vms']
            vbox.customize ['modifyvm', :id, '--nictype6', '82545EM']
            vbox.customize ['modifyvm', :id, '--nicpromisc6', 'allow-vms']
      end
      p4.vm.provision "file", source: "gen_frr_config.py", destination: "gen_frr_config.py"
      p4.vm.provision "shell", path: "l3vpn_provisioning"
  end 
  config.vm.define "pe1" do |pe1|
      pe1.vm.box = "debian/buster64"
#      pe1.vm.box = "kwilczynski/ubuntu-18.04"
      pe1.vm.hostname = "PE1"
      pe1.vm.provision "shell", path: "gen_provisioning"
      pe1.vm.provision :reload
      pe1.vm.network "private_network", ip: "172.16.111.100", virtualbox_intnet: "pe1ce1"
      pe1.vm.network "private_network", ip: "172.16.112.100", virtualbox_intnet: "pe1ce2"
      pe1.vm.network "private_network", ip: "172.16.11.100", virtualbox_intnet: "pe1p1"
      pe1.vm.network "private_network", ip: "172.16.12.100", virtualbox_intnet: "pe1p2"
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
            vbox.customize ['modifyvm', :id, '--nictype5', '82545EM']
            vbox.customize ['modifyvm', :id, '--nicpromisc5', 'allow-vms']
      end
      pe1.vm.provision "file", source: "gen_frr_config.py", destination: "gen_frr_config.py"
      pe1.vm.provision "shell", path: "l3vpn_provisioning"
  end
  config.vm.define "pe2" do |pe2|
      pe2.vm.box = "debian/buster64"
#      pe1.vm.box = "kwilczynski/ubuntu-18.04"
      pe2.vm.hostname = "PE2"
      pe2.vm.provision "shell", path: "gen_provisioning"
      pe2.vm.provision :reload
      pe2.vm.network "private_network", ip: "172.16.211.100", virtualbox_intnet: "pe2ce3"
      pe2.vm.network "private_network", ip: "172.16.212.100", virtualbox_intnet: "pe2ce4"
      pe2.vm.network "private_network", ip: "172.16.21.100", virtualbox_intnet: "pe2p1"
      pe2.vm.network "private_network", ip: "172.16.22.100", virtualbox_intnet: "pe2p2"
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
            vbox.customize ['modifyvm', :id, '--nictype5', '82545EM']
            vbox.customize ['modifyvm', :id, '--nicpromisc5', 'allow-vms']
      end
      pe2.vm.provision "file", source: "gen_frr_config.py", destination: "gen_frr_config.py"
      pe2.vm.provision "shell", path: "l3vpn_provisioning"
  end
  config.vm.define "ce1" do |ce1|
      ce1.vm.box = "generic/ubuntu2004"
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
      ce2.vm.box = "generic/ubuntu2004"
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
      ce3.vm.box = "generic/ubuntu2004"
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
      ce4.vm.box = "generic/ubuntu2004"
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
