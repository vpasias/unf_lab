Vagrant.configure("2") do |config|
  config.vm.define "p0" do |p0|
      p0.vm.box = "unf"
      p0.vm.hostname = "P0"
      p0.vm.provider "virtualbox" do |vbox|
            vbox.name = "P0"
            vbox.memory = 16384
            vbox.cpus = 4
            vbox.customize ["modifyvm", :id, "--chipset", "ich9"]
            vbox.customize ['modifyvm', :id, '--nested-hw-virt', 'on']
      end
      p0.vm.provision "file", source: "gen_frr_config-vpp.py", destination: "gen_frr_config-vpp.py"
      p0.vm.provision "file", source: "l3vpn_provisioning-vpp", destination: "l3vpn_provisioning-vpp"
  end
  config.vm.define "p1" do |p1|
      p1.vm.box = "unf"
      p1.vm.hostname = "P1"
      p1.vm.provider "virtualbox" do |vbox|
            vbox.name = "P1"
            vbox.memory = 16384
            vbox.cpus = 4
            vbox.customize ["modifyvm", :id, "--chipset", "ich9"]
            vbox.customize ['modifyvm', :id, '--nested-hw-virt', 'on']
      end
      p1.vm.provision "file", source: "gen_frr_config-vpp.py", destination: "gen_frr_config-vpp.py"
      p1.vm.provision "file", source: "l3vpn_provisioning-vpp", destination: "l3vpn_provisioning-vpp"
  end
  config.vm.define "p2" do |p2|
      p2.vm.box = "unf"
      p2.vm.hostname = "P2"
      p2.vm.provider "virtualbox" do |vbox|
            vbox.name = "P2"
            vbox.memory = 16384
            vbox.cpus = 4
            vbox.customize ["modifyvm", :id, "--chipset", "ich9"]
            vbox.customize ['modifyvm', :id, '--nested-hw-virt', 'on']
      end
      p2.vm.provision "file", source: "gen_frr_config-vpp.py", destination: "gen_frr_config-vpp.py"
      p2.vm.provision "file", source: "l3vpn_provisioning-vpp", destination: "l3vpn_provisioning-vpp"
  end
  config.vm.define "p3" do |p3|
      p3.vm.box = "unf"
      p3.vm.hostname = "P3"
      p3.vm.provider "virtualbox" do |vbox|
            vbox.name = "P3"
            vbox.memory = 16384
            vbox.cpus = 4
            vbox.customize ["modifyvm", :id, "--chipset", "ich9"]
            vbox.customize ['modifyvm', :id, '--nested-hw-virt', 'on']
      end
      p3.vm.provision "file", source: "gen_frr_config-vpp.py", destination: "gen_frr_config-vpp.py"
      p3.vm.provision "file", source: "l3vpn_provisioning-vpp", destination: "l3vpn_provisioning-vpp"
  end
  config.vm.define "p4" do |p4|
      p4.vm.box = "unf"
      p4.vm.hostname = "P4" 
      p4.vm.provider "virtualbox" do |vbox|
            vbox.name = "P4"
            vbox.memory = 16384
            vbox.cpus = 4
            vbox.customize ["modifyvm", :id, "--chipset", "ich9"]
            vbox.customize ['modifyvm', :id, '--nested-hw-virt', 'on']
      end
      p4.vm.provision "file", source: "gen_frr_config-vpp.py", destination: "gen_frr_config-vpp.py"
      p4.vm.provision "file", source: "l3vpn_provisioning-vpp", destination: "l3vpn_provisioning-vpp"
  end
  config.vm.define "p5" do |p5|
      p5.vm.box = "unf"
      p5.vm.hostname = "P5"
      p5.vm.provider "virtualbox" do |vbox|
            vbox.name = "P5"
            vbox.memory = 16384
            vbox.cpus = 4
            vbox.customize ["modifyvm", :id, "--chipset", "ich9"]
            vbox.customize ['modifyvm', :id, '--nested-hw-virt', 'on']
      end
      p5.vm.provision "file", source: "gen_frr_config-vpp.py", destination: "gen_frr_config-vpp.py"
      p5.vm.provision "file", source: "l3vpn_provisioning-vpp", destination: "l3vpn_provisioning-vpp"
  end
  config.vm.define "p6" do |p6|
      p6.vm.box = "unf"
      p6.vm.hostname = "P6"
      p6.vm.provider "virtualbox" do |vbox|
            vbox.name = "P6"
            vbox.memory = 16384
            vbox.cpus = 4
            vbox.customize ["modifyvm", :id, "--chipset", "ich9"]
            vbox.customize ['modifyvm', :id, '--nested-hw-virt', 'on']
      end
      p6.vm.provision "file", source: "gen_frr_config-vpp.py", destination: "gen_frr_config-vpp.py"
      p6.vm.provision "file", source: "l3vpn_provisioning-vpp", destination: "l3vpn_provisioning-vpp"
  end
  config.vm.define "pe1" do |pe1|
      pe1.vm.box = "unf"
      pe1.vm.hostname = "PE1"
      pe1.vm.provider "virtualbox" do |vbox|
            vbox.name = "PE1"
            vbox.memory = 16384
            vbox.cpus = 4
            vbox.customize ["modifyvm", :id, "--chipset", "ich9"]
            vbox.customize ['modifyvm', :id, '--nested-hw-virt', 'on']
      end
      pe1.vm.provision "file", source: "gen_frr_config-vpp.py", destination: "gen_frr_config-vpp.py"
      pe1.vm.provision "file", source: "l3vpn_provisioning-vpp", destination: "l3vpn_provisioning-vpp"
  end
  config.vm.define "pe2" do |pe2|
      pe2.vm.box = "unf"
      pe2.vm.hostname = "PE2"
      pe2.vm.provider "virtualbox" do |vbox|
            vbox.name = "PE2"
            vbox.memory = 16384
            vbox.cpus = 4
            vbox.customize ["modifyvm", :id, "--chipset", "ich9"]
            vbox.customize ['modifyvm', :id, '--nested-hw-virt', 'on']
      end
      pe2.vm.provision "file", source: "gen_frr_config-vpp.py", destination: "gen_frr_config-vpp.py"
      pe2.vm.provision "file", source: "l3vpn_provisioning-vpp", destination: "l3vpn_provisioning-vpp"
  end
  config.vm.define "pe3" do |pe3|
      pe3.vm.box = "unf"
      pe3.vm.hostname = "PE3"
      pe3.vm.provider "virtualbox" do |vbox|
            vbox.name = "PE3"
            vbox.memory = 16384
            vbox.cpus = 4
            vbox.customize ["modifyvm", :id, "--chipset", "ich9"]
            vbox.customize ['modifyvm', :id, '--nested-hw-virt', 'on']
      end
      pe3.vm.provision "file", source: "gen_frr_config-vpp.py", destination: "gen_frr_config-vpp.py"
      pe3.vm.provision "file", source: "l3vpn_provisioning-vpp", destination: "l3vpn_provisioning-vpp"
  end
  config.vm.define "pe4" do |pe4|
      pe4.vm.box = "unf"
      pe4.vm.hostname = "PE4"
      pe4.vm.provider "virtualbox" do |vbox|
            vbox.name = "PE4"
            vbox.memory = 16384
            vbox.cpus = 4
            vbox.customize ["modifyvm", :id, "--chipset", "ich9"]
            vbox.customize ['modifyvm', :id, '--nested-hw-virt', 'on']
      end
      pe4.vm.provision "file", source: "gen_frr_config-vpp.py", destination: "gen_frr_config-vpp.py"
      pe4.vm.provision "file", source: "l3vpn_provisioning-vpp", destination: "l3vpn_provisioning-vpp"
  end
  config.vm.define "ce1" do |ce1|
      ce1.vm.box = "generic/ubuntu2004"
      ce1.vm.hostname = "CE1"
      ce1.vm.provider "virtualbox" do |vbox|
            vbox.name = "CE1"
            vbox.memory = 16384
            vbox.cpus = 4
            vbox.customize ["modifyvm", :id, "--chipset", "ich9"]
            vbox.customize ['modifyvm', :id, '--nested-hw-virt', 'on']
      end
      ce1.vm.provision "file", source: "l3vpn_provisioning-vpp", destination: "l3vpn_provisioning-vpp"
  end
  config.vm.define "ce2" do |ce2|
      ce2.vm.box = "generic/ubuntu2004"
      ce2.vm.hostname = "CE2"
      ce2.vm.provider "virtualbox" do |vbox|
            vbox.name = "CE2"
            vbox.memory = 16384
            vbox.cpus = 4
            vbox.customize ["modifyvm", :id, "--chipset", "ich9"]
            vbox.customize ['modifyvm', :id, '--nested-hw-virt', 'on']
      end
      ce2.vm.provision "file", source: "l3vpn_provisioning-vpp", destination: "l3vpn_provisioning-vpp"
  end
  config.vm.define "ce3" do |ce3|
      ce3.vm.box = "generic/ubuntu2004"
      ce3.vm.hostname = "CE3"
      ce3.vm.provider "virtualbox" do |vbox|
            vbox.name = "CE3"
            vbox.memory = 16384
            vbox.cpus = 4
            vbox.customize ["modifyvm", :id, "--chipset", "ich9"]
            vbox.customize ['modifyvm', :id, '--nested-hw-virt', 'on']
      end
      ce3.vm.provision "file", source: "l3vpn_provisioning-vpp", destination: "l3vpn_provisioning-vpp"
  end
  config.vm.define "ce4" do |ce4|
      ce4.vm.box = "generic/ubuntu2004"
      ce4.vm.hostname = "CE4"
      ce4.vm.provider "virtualbox" do |vbox|
            vbox.name = "CE4"
            vbox.memory = 16384
            vbox.cpus = 4
            vbox.customize ["modifyvm", :id, "--chipset", "ich9"]
            vbox.customize ['modifyvm', :id, '--nested-hw-virt', 'on']
      end
      ce4.vm.provision "file", source: "l3vpn_provisioning-vpp", destination: "l3vpn_provisioning-vpp"
  end
  config.vm.define "ce5" do |ce5|
      ce5.vm.box = "generic/ubuntu2004"
      ce5.vm.hostname = "CE5"
      ce5.vm.provider "virtualbox" do |vbox|
            vbox.name = "CE5"
            vbox.memory = 16384
            vbox.cpus = 4
            vbox.customize ["modifyvm", :id, "--chipset", "ich9"]
            vbox.customize ['modifyvm', :id, '--nested-hw-virt', 'on']
      end
      ce5.vm.provision "file", source: "l3vpn_provisioning-vpp", destination: "l3vpn_provisioning-vpp"
  end
  config.vm.define "ce6" do |ce6|
      ce6.vm.box = "generic/ubuntu2004"
      ce6.vm.hostname = "CE6"
      ce6.vm.provider "virtualbox" do |vbox|
            vbox.name = "CE6"
            vbox.memory = 16384
            vbox.cpus = 4
            vbox.customize ["modifyvm", :id, "--chipset", "ich9"]
            vbox.customize ['modifyvm', :id, '--nested-hw-virt', 'on']
      end
      ce6.vm.provision "file", source: "l3vpn_provisioning-vpp", destination: "l3vpn_provisioning-vpp"
  end
  config.vm.define "ce7" do |ce7|
      ce7.vm.box = "generic/ubuntu2004"
      ce7.vm.hostname = "CE7"
      ce7.vm.provider "virtualbox" do |vbox|
            vbox.name = "CE7"
            vbox.memory = 16384
            vbox.cpus = 4
            vbox.customize ["modifyvm", :id, "--chipset", "ich9"]
            vbox.customize ['modifyvm', :id, '--nested-hw-virt', 'on']
      end
      ce7.vm.provision "file", source: "l3vpn_provisioning-vpp", destination: "l3vpn_provisioning-vpp"
  end
  config.vm.define "ce8" do |ce8|
      ce8.vm.box = "generic/ubuntu2004"
      ce8.vm.hostname = "CE8"
      ce8.vm.provider "virtualbox" do |vbox|
            vbox.name = "CE8"
            vbox.memory = 16384
            vbox.cpus = 4
            vbox.customize ["modifyvm", :id, "--chipset", "ich9"]
            vbox.customize ['modifyvm', :id, '--nested-hw-virt', 'on']
      end
      ce8.vm.provision "file", source: "l3vpn_provisioning-vpp", destination: "l3vpn_provisioning-vpp"
  end  
  
end
