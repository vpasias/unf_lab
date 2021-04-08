Vagrant.configure("2") do |config|
  config.vm.define "p0" do |p0|
#      p0.vm.box = "debian/buster64"
#      p0.vm.box = "kwilczynski/ubuntu-18.04"
      p0.vm.box = "generic/ubuntu1804"
      p0.vm.hostname = "P0"
#      p0.vm.provision "file", source: "~/vpp", destination: "$HOME/vpp"
      p0.vm.provision "shell", path: "gen_provisioning-u"
      p0.vm.provision :reload
      p0.vm.network "private_network", ip: "172.16.10.90", virtualbox_intnet: "p01"
      p0.vm.network "private_network", ip: "172.16.20.90", virtualbox_intnet: "p02"
      p0.vm.network "private_network", ip: "172.16.30.90", virtualbox_intnet: "p03"
      p0.vm.network "private_network", ip: "172.16.40.90", virtualbox_intnet: "p04"
      p0.vm.network "private_network", ip: "172.16.50.90", virtualbox_intnet: "p05"   
      p0.vm.provider "virtualbox" do |vbox|
            vbox.name = "P0"
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
      p0.vm.provision "file", source: "gen_frr_config-vpp.py", destination: "gen_frr_config-vpp.py"
      p0.vm.provision "shell", path: "l3vpn_provisioning-vpp"
  end
  config.vm.define "p1" do |p1|
      p1.vm.box = "debian/buster64"
#     p1.vm.box = "kwilczynski/ubuntu-18.04"
      p1.vm.hostname = "P1"
      p1.vm.provision "shell", path: "gen_provisioning-d"
      p1.vm.provision :reload
      p1.vm.network "private_network", ip: "172.16.111.90", virtualbox_intnet: "pe1p1"
      p1.vm.network "private_network", ip: "172.16.121.90", virtualbox_intnet: "pe2p1"
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
  config.vm.define "p2" do |p2|
      p2.vm.box = "debian/buster64"
#     p2.vm.box = "kwilczynski/ubuntu-18.04"
      p2.vm.hostname = "P2"
      p2.vm.provision "shell", path: "gen_provisioning-d"
      p2.vm.provision :reload
      p2.vm.network "private_network", ip: "172.16.112.90", virtualbox_intnet: "pe1p2"
      p2.vm.network "private_network", ip: "172.16.122.90", virtualbox_intnet: "pe2p2"
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
  config.vm.define "p3" do |p3|
      p3.vm.box = "debian/buster64"
#      p3.vm.box = "kwilczynski/ubuntu-18.04"
#      p3.vm.box = "generic/ubuntu1804"
      p3.vm.hostname = "P3"
      p3.vm.provision "shell", path: "gen_provisioning-d"
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
      p3.vm.provision "file", source: "gen_frr_config.py", destination: "gen_frr_config.py"
      p3.vm.provision "shell", path: "l3vpn_provisioning"
  end
  config.vm.define "p4" do |p4|
      p4.vm.box = "debian/buster64"
 #     p4.vm.box = "kwilczynski/ubuntu-18.04"
      p4.vm.hostname = "P4"
      p4.vm.provision "shell", path: "gen_provisioning-d"
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
  config.vm.define "p5" do |p5|
      p5.vm.box = "debian/buster64"
#     p5.vm.box = "kwilczynski/ubuntu-18.04"
      p5.vm.hostname = "P5"
      p5.vm.provision "shell", path: "gen_provisioning-d"
      p5.vm.provision :reload
      p5.vm.network "private_network", ip: "172.16.135.90", virtualbox_intnet: "pe3p5"
      p5.vm.network "private_network", ip: "172.16.145.90", virtualbox_intnet: "pe4p5"
      p5.vm.network "private_network", ip: "172.16.253.90", virtualbox_intnet: "p5p6"
      p5.vm.network "private_network", ip: "172.16.35.100", virtualbox_intnet: "p3p5"
      p5.vm.network "private_network", ip: "172.16.45.100", virtualbox_intnet: "p4p5"
      p5.vm.provider "virtualbox" do |vbox|
            vbox.name = "P5"
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
      p5.vm.provision "file", source: "gen_frr_config.py", destination: "gen_frr_config.py"
      p5.vm.provision "shell", path: "l3vpn_provisioning"
  end
  config.vm.define "p6" do |p6|
      p6.vm.box = "debian/buster64"
#     p6.vm.box = "kwilczynski/ubuntu-18.04"
      p6.vm.hostname = "P6"
      p6.vm.provision "shell", path: "gen_provisioning-d"
      p6.vm.provision :reload
      p6.vm.network "private_network", ip: "172.16.136.90", virtualbox_intnet: "pe3p6"
      p6.vm.network "private_network", ip: "172.16.146.90", virtualbox_intnet: "pe4p6"
      p6.vm.network "private_network", ip: "172.16.253.100", virtualbox_intnet: "p5p6"
      p6.vm.network "private_network", ip: "172.16.36.100", virtualbox_intnet: "p3p6"
      p6.vm.network "private_network", ip: "172.16.46.100", virtualbox_intnet: "p4p6"
      p6.vm.provider "virtualbox" do |vbox|
            vbox.name = "P6"
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
      p6.vm.provision "file", source: "gen_frr_config.py", destination: "gen_frr_config.py"
      p6.vm.provision "shell", path: "l3vpn_provisioning"
  end
  config.vm.define "pe1" do |pe1|
      pe1.vm.box = "debian/buster64"
#      pe1.vm.box = "kwilczynski/ubuntu-18.04"
      pe1.vm.hostname = "PE1"
      pe1.vm.provision "shell", path: "gen_provisioning-d"
      pe1.vm.provision :reload
      pe1.vm.network "private_network", ip: "172.16.211.100", virtualbox_intnet: "pe1ce1"
      pe1.vm.network "private_network", ip: "172.16.212.100", virtualbox_intnet: "pe1ce2"
      pe1.vm.network "private_network", ip: "172.16.111.100", virtualbox_intnet: "pe1p1"
      pe1.vm.network "private_network", ip: "172.16.112.100", virtualbox_intnet: "pe1p2"
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
      pe2.vm.provision "shell", path: "gen_provisioning-d"
      pe2.vm.provision :reload
      pe2.vm.network "private_network", ip: "172.16.223.100", virtualbox_intnet: "pe2ce3"
      pe2.vm.network "private_network", ip: "172.16.224.100", virtualbox_intnet: "pe2ce4"
      pe2.vm.network "private_network", ip: "172.16.121.100", virtualbox_intnet: "pe2p1"
      pe2.vm.network "private_network", ip: "172.16.122.100", virtualbox_intnet: "pe2p2"
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
  config.vm.define "pe3" do |pe3|
      pe3.vm.box = "debian/buster64"
#      pe1.vm.box = "kwilczynski/ubuntu-18.04"
      pe3.vm.hostname = "PE3"
      pe3.vm.provision "shell", path: "gen_provisioning-d"
      pe3.vm.provision :reload
      pe3.vm.network "private_network", ip: "172.16.235.100", virtualbox_intnet: "pe3ce5"
      pe3.vm.network "private_network", ip: "172.16.236.100", virtualbox_intnet: "pe3ce6"
      pe3.vm.network "private_network", ip: "172.16.135.100", virtualbox_intnet: "pe3p5"
      pe3.vm.network "private_network", ip: "172.16.136.100", virtualbox_intnet: "pe3p6"
      pe3.vm.provider "virtualbox" do |vbox|
            vbox.name = "PE3"
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
      pe3.vm.provision "file", source: "gen_frr_config.py", destination: "gen_frr_config.py"
      pe3.vm.provision "shell", path: "l3vpn_provisioning"
  end
  config.vm.define "pe4" do |pe4|
      pe4.vm.box = "debian/buster64"
#      pe1.vm.box = "kwilczynski/ubuntu-18.04"
      pe4.vm.hostname = "PE4"
      pe4.vm.provision "shell", path: "gen_provisioning-d"
      pe4.vm.provision :reload
      pe4.vm.network "private_network", ip: "172.16.247.100", virtualbox_intnet: "pe4ce7"
      pe4.vm.network "private_network", ip: "172.16.248.100", virtualbox_intnet: "pe4ce8"
      pe4.vm.network "private_network", ip: "172.16.145.100", virtualbox_intnet: "pe4p5"
      pe4.vm.network "private_network", ip: "172.16.146.100", virtualbox_intnet: "pe4p6"
      pe4.vm.provider "virtualbox" do |vbox|
            vbox.name = "PE4"
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
      pe4.vm.provision "file", source: "gen_frr_config.py", destination: "gen_frr_config.py"
      pe4.vm.provision "shell", path: "l3vpn_provisioning"
  end
  config.vm.define "ce1" do |ce1|
      ce1.vm.box = "generic/ubuntu2004"
      ce1.vm.hostname = "CE1"
      ce1.vm.network "private_network", ip: "172.16.211.10", virtualbox_intnet: "pe1ce1"
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
      ce2.vm.network "private_network", ip: "172.16.212.10", virtualbox_intnet: "pe1ce2"
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
      ce3.vm.network "private_network", ip: "172.16.223.10", virtualbox_intnet: "pe2ce3"
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
      ce4.vm.network "private_network", ip: "172.16.224.10", virtualbox_intnet: "pe2ce4"
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
  config.vm.define "ce5" do |ce5|
      ce5.vm.box = "generic/ubuntu2004"
      ce5.vm.hostname = "CE5"
      ce5.vm.network "private_network", ip: "172.16.235.10", virtualbox_intnet: "pe3ce5"
      ce5.vm.provider "virtualbox" do |vbox|
            vbox.name = "CE5"
            vbox.memory = 16384
            vbox.cpus = 4
            vbox.customize ["modifyvm", :id, "--chipset", "ich9"]
            vbox.customize ['modifyvm', :id, '--nested-hw-virt', 'on']
            vbox.customize ['modifyvm', :id, '--nictype2', '82545EM']
            vbox.customize ['modifyvm', :id, '--nicpromisc2', 'allow-vms']
      end
      ce5.vm.provision "shell", path: "l3vpn_provisioning"
  end
  config.vm.define "ce6" do |ce6|
      ce6.vm.box = "generic/ubuntu2004"
      ce6.vm.hostname = "CE6"
      ce6.vm.network "private_network", ip: "172.16.236.10", virtualbox_intnet: "pe3ce6"
      ce6.vm.provider "virtualbox" do |vbox|
            vbox.name = "CE2"
            vbox.memory = 16384
            vbox.cpus = 4
            vbox.customize ["modifyvm", :id, "--chipset", "ich9"]
            vbox.customize ['modifyvm', :id, '--nested-hw-virt', 'on']
            vbox.customize ['modifyvm', :id, '--nictype2', '82545EM']
            vbox.customize ['modifyvm', :id, '--nicpromisc2', 'allow-vms']
      end
      ce6.vm.provision "shell", path: "l3vpn_provisioning"
  end
  config.vm.define "ce7" do |ce7|
      ce7.vm.box = "generic/ubuntu2004"
      ce7.vm.hostname = "CE7"
      ce7.vm.network "private_network", ip: "172.16.247.10", virtualbox_intnet: "pe4ce7"
      ce7.vm.provider "virtualbox" do |vbox|
            vbox.name = "CE7"
            vbox.memory = 16384
            vbox.cpus = 4
            vbox.customize ["modifyvm", :id, "--chipset", "ich9"]
            vbox.customize ['modifyvm', :id, '--nested-hw-virt', 'on']
            vbox.customize ['modifyvm', :id, '--nictype2', '82545EM']
            vbox.customize ['modifyvm', :id, '--nicpromisc2', 'allow-vms']
      end
      ce7.vm.provision "shell", path: "l3vpn_provisioning"
  end
  config.vm.define "ce8" do |ce8|
      ce8.vm.box = "generic/ubuntu2004"
      ce8.vm.hostname = "CE8"
      ce8.vm.network "private_network", ip: "172.16.248.10", virtualbox_intnet: "pe4ce8"
      ce8.vm.provider "virtualbox" do |vbox|
            vbox.name = "CE8"
            vbox.memory = 16384
            vbox.cpus = 4
            vbox.customize ["modifyvm", :id, "--chipset", "ich9"]
            vbox.customize ['modifyvm', :id, '--nested-hw-virt', 'on']
            vbox.customize ['modifyvm', :id, '--nictype2', '82545EM']
            vbox.customize ['modifyvm', :id, '--nicpromisc2', 'allow-vms']
      end
      ce8.vm.provision "shell", path: "l3vpn_provisioning"
  end  
  
end
