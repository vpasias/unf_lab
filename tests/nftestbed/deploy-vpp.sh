#!/usr/bin/env bash

vagrant up p1 pe1 pe2 --provider=virtualbox

# P1 configuration
VBoxManage controlvm P1 poweroff
VBoxManage modifyvm P1 --nic2 intnet --intnet2 pe1p1 --nicpromisc2 allow-vms --nictype2 82545EM
VBoxManage modifyvm P1 --nic3 intnet --intnet3 pe2p1 --nicpromisc3 allow-vms --nictype3 82545EM
VBoxManage startvm P1 --type headless
sleep 50
#vagrant ssh p1 -c "sudo vppctl enable tap-inject"
vagrant ssh p1 -c "sudo ip addr add 172.16.150.90/24 dev vpp0 && sudo ip link set dev vpp0 up"
vagrant ssh p1 -c "sudo ip addr add 172.16.250.90/24 dev vpp1 && sudo ip link set dev vpp1 up"
vagrant ssh p1 -c "sudo ip a"
vagrant ssh p1 -c "sudo chmod +x l3vpn_provisioning && ./l3vpn_provisioning"

# PE1 configuration
VBoxManage controlvm PE1 poweroff
VBoxManage modifyvm PE1 --nic2 intnet --intnet2 pe1ce1 --nicpromisc2 allow-vms --nictype2 82545EM
VBoxManage modifyvm PE1 --nic3 intnet --intnet3 pe1ce2 --nicpromisc3 allow-vms --nictype3 82545EM
VBoxManage modifyvm PE1 --nic4 intnet --intnet4 pe1p1 --nicpromisc4 allow-vms --nictype4 82545EM
VBoxManage startvm PE1 --type headless
sleep 50
#vagrant ssh pe1 -c "sudo vppctl enable tap-inject"
vagrant ssh pe1 -c "sudo ip addr add 172.16.111.100/24 dev vpp0 && sudo ip link set dev vpp0 up"
vagrant ssh pe1 -c "sudo ip addr add 172.16.112.100/24 dev vpp1 && sudo ip link set dev vpp1 up"
vagrant ssh pe1 -c "sudo ip addr add 172.16.150.100/24 dev vpp2 && sudo ip link set dev vpp2 up"
vagrant ssh pe1 -c "sudo ip a"
vagrant ssh pe1 -c "sudo chmod +x l3vpn_provisioning && ./l3vpn_provisioning"

# PE2 configuration
VBoxManage controlvm PE2 poweroff
VBoxManage modifyvm PE2 --nic2 intnet --intnet2 pe2ce3 --nicpromisc2 allow-vms --nictype2 82545EM
VBoxManage modifyvm PE2 --nic3 intnet --intnet3 pe2ce4 --nicpromisc3 allow-vms --nictype3 82545EM
VBoxManage modifyvm PE2 --nic4 intnet --intnet4 pe2p1 --nicpromisc4 allow-vms --nictype4 82545EM
VBoxManage startvm PE2 --type headless
sleep 50
#vagrant ssh pe2 -c "sudo vppctl enable tap-inject"
vagrant ssh pe2 -c "sudo ip addr add 172.16.211.100/24 dev vpp0 && sudo ip link set dev vpp0 up"
vagrant ssh pe2 -c "sudo ip addr add 172.16.212.100/24 dev vpp1 && sudo ip link set dev vpp1 up"
vagrant ssh pe2 -c "sudo ip addr add 172.16.250.100/24 dev vpp2 && sudo ip link set dev vpp2 up"
vagrant ssh pe2 -c "sudo ip a"
vagrant ssh pe2 -c "sudo chmod +x l3vpn_provisioning && ./l3vpn_provisioning"

vagrant up ce1 ce2 ce3 ce4 --provider=virtualbox

# CE1 configuration
VBoxManage controlvm CE1 poweroff
VBoxManage modifyvm CE1 --nic2 intnet --intnet2 pe1ce1 --nicpromisc2 allow-vms --nictype2 82545EM
VBoxManage startvm CE1 --type headless
sleep 30
vagrant ssh ce1 -c "sudo ip addr add 172.16.111.10/24 dev eth1 && sudo ip link set dev eth1 up"
vagrant ssh ce1 -c "sudo ip a"
vagrant ssh ce1 -c "sudo chmod +x l3vpn_provisioning && ./l3vpn_provisioning"

# CE2 configuration
VBoxManage controlvm CE2 poweroff
VBoxManage modifyvm CE2 --nic2 intnet --intnet2 pe1ce2 --nicpromisc2 allow-vms --nictype2 82545EM
VBoxManage startvm CE2 --type headless
sleep 30
vagrant ssh ce2 -c "sudo ip addr add 172.16.112.10/24 dev eth1 && sudo ip link set dev eth1 up"
vagrant ssh ce2 -c "sudo ip a"
vagrant ssh ce2 -c "sudo chmod +x l3vpn_provisioning && ./l3vpn_provisioning"

# CE3 configuration
VBoxManage controlvm CE3 poweroff
VBoxManage modifyvm CE3 --nic2 intnet --intnet2 pe2ce3 --nicpromisc2 allow-vms --nictype2 82545EM
VBoxManage startvm CE3 --type headless
sleep 30
vagrant ssh ce3 -c "sudo ip addr add 172.16.211.10/24 dev eth1 && sudo ip link set dev eth1 up"
vagrant ssh ce3 -c "sudo ip a"
vagrant ssh ce3 -c "sudo chmod +x l3vpn_provisioning && ./l3vpn_provisioning"

# CE4 configuration
VBoxManage controlvm CE4 poweroff
VBoxManage modifyvm CE4 --nic2 intnet --intnet2 pe2ce4 --nicpromisc2 allow-vms --nictype2 82545EM
VBoxManage startvm CE4 --type headless
sleep 30
vagrant ssh ce4 -c "sudo ip addr add 172.16.212.10/24 dev eth1 && sudo ip link set dev eth1 up"
vagrant ssh ce4 -c "sudo ip a"
vagrant ssh ce4 -c "sudo chmod +x l3vpn_provisioning && ./l3vpn_provisioning"

vagrant ssh p1 -c "sudo service frr restart"
vagrant ssh pe1 -c "sudo service frr restart"
vagrant ssh pe2 -c "sudo service frr restart"
