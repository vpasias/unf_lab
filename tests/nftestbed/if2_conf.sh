#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 IP1 IP2"
    exit 2
fi

IP1=$1
IP2=$2

/sbin/modprobe uio_pci_generic

ip link set dev eth1 down
ip link set dev eth2 down

cd /home/vagrant/flexirouter/vpp/build-root/build-vpp_debug-native/vpp/bin/

gdb --args vpp -c /home/vagrant/flexirouter/vpp/scripts/startup.conf

cd -

python /home/vagrant/flexirouter/vpp/extras/vpp_config/scripts/dpdk-devbind.py -b e1000 00:08.0 00:09.0

ip addr add $IP1/24 dev eth1
ip link set dev eth1 mtu 1500
ip link set dev eth1 up
ip addr add $IP2/24 dev eth2
ip link set dev eth2 mtu 1500
ip link set dev eth2 up
