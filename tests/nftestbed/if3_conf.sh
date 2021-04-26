#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 IP1 IP2 IP3"
    exit 2
fi

IP1=$1
IP2=$2
IP2=$3

/sbin/modprobe uio_pci_generic

ip link set dev eth1 down
ip link set dev eth2 down
ip link set dev eth3 down

cd /home/vagrant/flexirouter/vpp

gdb --args ./build-root/build-vpp_debug-native/vpp/bin/vpp -c /home/vagrant/flexirouter/scripts/startup.conf

cd -

python /home/vagrant/flexirouter/vpp/extras/vpp_config/scripts/dpdk-devbind.py -b e1000 00:01.0 00:02.0 00:03.0

ip link set dev eth1 up
ip link set dev eth2 up
ip link set dev eth3 up
