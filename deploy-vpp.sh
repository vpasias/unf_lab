#!/usr/bin/env bash

vagrant up p1 p2 p3 p4 p5 p6

vagrant up pe1 pe2 pe3 pe4 

# P1 configuration
VBoxManage controlvm P1 poweroff
VBoxManage modifyvm P1 --nic2 intnet --intnet2 pe1p1 --nicpromisc2 allow-all --nictype2 82545EM
VBoxManage modifyvm P1 --nic3 intnet --intnet3 pe2p1 --nicpromisc3 allow-all --nictype3 82545EM
VBoxManage modifyvm P1 --nic4 intnet --intnet4 p1p2 --nicpromisc4 allow-all --nictype4 82545EM
VBoxManage modifyvm P1 --nic5 intnet --intnet5 p3p1 --nicpromisc5 allow-all --nictype5 82545EM
VBoxManage modifyvm P1 --nic6 intnet --intnet6 p4p1 --nicpromisc6 allow-all --nictype6 82545EM
VBoxManage startvm P1 --type headless
sleep 50
vagrant ssh p1 -c "sudo vppctl enable tap-inject"
vagrant ssh p1 -c "sudo ip addr add 172.16.111.90/24 dev vpp0 && sudo ip link set dev vpp0 up"
vagrant ssh p1 -c "sudo ip addr add 172.16.121.90/24 dev vpp1 && sudo ip link set dev vpp1 up"
vagrant ssh p1 -c "sudo ip addr add 172.16.251.90/24 dev vpp2 && sudo ip link set dev vpp2 up"
vagrant ssh p1 -c "sudo ip addr add 172.16.31.100/24 dev vpp3 && sudo ip link set dev vpp3 up"
vagrant ssh p1 -c "sudo ip addr add 172.16.41.100/24 dev vpp4 && sudo ip link set dev vpp4 up"
vagrant ssh p1 -c "sudo ip a"
vagrant ssh p1 -c "sudo chmod +x l3vpn_provisioning-vpp && ./l3vpn_provisioning-vpp"

# P2 configuration
VBoxManage controlvm P2 poweroff
VBoxManage modifyvm P2 --nic2 intnet --intnet2 pe1p2 --nicpromisc2 allow-all --nictype2 82545EM
VBoxManage modifyvm P2 --nic3 intnet --intnet3 pe2p2 --nicpromisc3 allow-all --nictype3 82545EM
VBoxManage modifyvm P2 --nic4 intnet --intnet4 p1p2 --nicpromisc4 allow-all --nictype4 82545EM
VBoxManage modifyvm P2 --nic5 intnet --intnet5 p3p2 --nicpromisc5 allow-all --nictype5 82545EM
VBoxManage modifyvm P2 --nic6 intnet --intnet6 p4p2 --nicpromisc6 allow-all --nictype6 82545EM
VBoxManage startvm P2 --type headless
sleep 50
vagrant ssh p2 -c "sudo vppctl enable tap-inject"
vagrant ssh p2 -c "sudo ip addr add 172.16.112.90/24 dev vpp0 && sudo ip link set dev vpp0 up"
vagrant ssh p2 -c "sudo ip addr add 172.16.122.90/24 dev vpp1 && sudo ip link set dev vpp1 up"
vagrant ssh p2 -c "sudo ip addr add 172.16.251.100/24 dev vpp2 && sudo ip link set dev vpp2 up"
vagrant ssh p2 -c "sudo ip addr add 172.16.32.100/24 dev vpp3 && sudo ip link set dev vpp3 up"
vagrant ssh p2 -c "sudo ip addr add 172.16.42.100/24 dev vpp4 && sudo ip link set dev vpp4 up"
vagrant ssh p2 -c "sudo ip a"
vagrant ssh p2 -c "sudo chmod +x l3vpn_provisioning-vpp && ./l3vpn_provisioning-vpp"

# P3 configuration
VBoxManage controlvm P3 poweroff
VBoxManage modifyvm P3 --nic2 intnet --intnet2 p3p1 --nicpromisc2 allow-all --nictype2 82545EM
VBoxManage modifyvm P3 --nic3 intnet --intnet3 p3p2 --nicpromisc3 allow-all --nictype3 82545EM
VBoxManage modifyvm P3 --nic4 intnet --intnet4 p3p4 --nicpromisc4 allow-all --nictype4 82545EM
VBoxManage modifyvm P3 --nic5 intnet --intnet5 p3p5 --nicpromisc5 allow-all --nictype5 82545EM
VBoxManage modifyvm P3 --nic6 intnet --intnet6 p3p6 --nicpromisc6 allow-all --nictype6 82545EM
VBoxManage startvm P3 --type headless
sleep 50
vagrant ssh p3 -c "sudo vppctl enable tap-inject"
vagrant ssh p3 -c "sudo ip addr add 172.16.31.90/24 dev vpp0 && sudo ip link set dev vpp0 up"
vagrant ssh p3 -c "sudo ip addr add 172.16.32.90/24 dev vpp1 && sudo ip link set dev vpp1 up"
vagrant ssh p3 -c "sudo ip addr add 172.16.252.90/24 dev vpp2 && sudo ip link set dev vpp2 up"
vagrant ssh p3 -c "sudo ip addr add 172.16.35.90/24 dev vpp3 && sudo ip link set dev vpp3 up"
vagrant ssh p3 -c "sudo ip addr add 172.16.36.90/24 dev vpp4 && sudo ip link set dev vpp4 up"
vagrant ssh p3 -c "sudo ip a"
vagrant ssh p3 -c "sudo chmod +x l3vpn_provisioning-vpp && ./l3vpn_provisioning-vpp"

# P4 configuration
VBoxManage controlvm P4 poweroff
VBoxManage modifyvm P4 --nic2 intnet --intnet2 p4p1 --nicpromisc2 allow-all --nictype2 82545EM
VBoxManage modifyvm P4 --nic3 intnet --intnet3 p4p2 --nicpromisc3 allow-all --nictype3 82545EM
VBoxManage modifyvm P4 --nic4 intnet --intnet4 p3p4 --nicpromisc4 allow-all --nictype4 82545EM
VBoxManage modifyvm P4 --nic5 intnet --intnet5 p4p5 --nicpromisc5 allow-all --nictype5 82545EM
VBoxManage modifyvm P4 --nic6 intnet --intnet6 p4p6 --nicpromisc6 allow-all --nictype6 82545EM
VBoxManage startvm P4 --type headless
sleep 50
vagrant ssh p4 -c "sudo vppctl enable tap-inject"
vagrant ssh p4 -c "sudo ip addr add 172.16.41.90/24 dev vpp0 && sudo ip link set dev vpp0 up"
vagrant ssh p4 -c "sudo ip addr add 172.16.42.90/24 dev vpp1 && sudo ip link set dev vpp1 up"
vagrant ssh p4 -c "sudo ip addr add 172.16.252.100/24 dev vpp2 && sudo ip link set dev vpp2 up"
vagrant ssh p4 -c "sudo ip addr add 172.16.45.90/24 dev vpp3 && sudo ip link set dev vpp3 up"
vagrant ssh p4 -c "sudo ip addr add 172.16.46.90/24 dev vpp4 && sudo ip link set dev vpp4 up"
vagrant ssh p4 -c "sudo ip a"
vagrant ssh p4 -c "sudo chmod +x l3vpn_provisioning-vpp && ./l3vpn_provisioning-vpp"

# P5 configuration
VBoxManage controlvm P5 poweroff
VBoxManage modifyvm P5 --nic2 intnet --intnet2 pe3p5 --nicpromisc2 allow-all --nictype2 82545EM
VBoxManage modifyvm P5 --nic3 intnet --intnet3 pe4p5 --nicpromisc3 allow-all --nictype3 82545EM
VBoxManage modifyvm P5 --nic4 intnet --intnet4 p5p6 --nicpromisc4 allow-all --nictype4 82545EM
VBoxManage modifyvm P5 --nic5 intnet --intnet5 p3p5 --nicpromisc5 allow-all --nictype5 82545EM
VBoxManage modifyvm P5 --nic6 intnet --intnet6 p4p5 --nicpromisc6 allow-all --nictype6 82545EM
VBoxManage startvm P5 --type headless
sleep 50
vagrant ssh p5 -c "sudo vppctl enable tap-inject"
vagrant ssh p5 -c "sudo ip addr add 172.16.135.90/24 dev vpp0 && sudo ip link set dev vpp0 up"
vagrant ssh p5 -c "sudo ip addr add 172.16.145.90/24 dev vpp1 && sudo ip link set dev vpp1 up"
vagrant ssh p5 -c "sudo ip addr add 172.16.253.90/24 dev vpp2 && sudo ip link set dev vpp2 up"
vagrant ssh p5 -c "sudo ip addr add 172.16.35.100/24 dev vpp3 && sudo ip link set dev vpp3 up"
vagrant ssh p5 -c "sudo ip addr add 172.16.45.100/24 dev vpp4 && sudo ip link set dev vpp4 up"
vagrant ssh p5 -c "sudo ip a"
vagrant ssh p5 -c "sudo chmod +x l3vpn_provisioning-vpp && ./l3vpn_provisioning-vpp"

# P6 configuration
VBoxManage controlvm P6 poweroff
VBoxManage modifyvm P6 --nic2 intnet --intnet2 pe3p6 --nicpromisc2 allow-all --nictype2 82545EM
VBoxManage modifyvm P6 --nic3 intnet --intnet3 pe4p6 --nicpromisc3 allow-all --nictype3 82545EM
VBoxManage modifyvm P6 --nic4 intnet --intnet4 p5p6 --nicpromisc4 allow-all --nictype4 82545EM
VBoxManage modifyvm P6 --nic5 intnet --intnet5 p3p6 --nicpromisc5 allow-all --nictype5 82545EM
VBoxManage modifyvm P6 --nic6 intnet --intnet6 p4p6 --nicpromisc6 allow-all --nictype6 82545EM
VBoxManage startvm P6 --type headless
sleep 50
vagrant ssh p6 -c "sudo vppctl enable tap-inject"
vagrant ssh p6 -c "sudo ip addr add 172.16.136.90/24 dev vpp0 && sudo ip link set dev vpp0 up"
vagrant ssh p6 -c "sudo ip addr add 172.16.146.90/24 dev vpp1 && sudo ip link set dev vpp1 up"
vagrant ssh p6 -c "sudo ip addr add 172.16.253.100/24 dev vpp2 && sudo ip link set dev vpp2 up"
vagrant ssh p6 -c "sudo ip addr add 172.16.36.100/24 dev vpp3 && sudo ip link set dev vpp3 up"
vagrant ssh p6 -c "sudo ip addr add 172.16.46.100/24 dev vpp4 && sudo ip link set dev vpp4 up"
vagrant ssh p6 -c "sudo ip a"
vagrant ssh p6 -c "sudo chmod +x l3vpn_provisioning-vpp && ./l3vpn_provisioning-vpp"

vagrant up ce1 ce2 ce3 ce4 ce5 ce6 ce7 ce8

vagrant ssh p1 -c "sudo service frr restart"
vagrant ssh p2 -c "sudo service frr restart"
vagrant ssh p3 -c "sudo service frr restart"
vagrant ssh p4 -c "sudo service frr restart"
vagrant ssh p5 -c "sudo service frr restart"
vagrant ssh p6 -c "sudo service frr restart"
vagrant ssh pe1 -c "sudo service frr restart"
vagrant ssh pe2 -c "sudo service frr restart"
vagrant ssh pe3 -c "sudo service frr restart"
vagrant ssh pe4 -c "sudo service frr restart"
