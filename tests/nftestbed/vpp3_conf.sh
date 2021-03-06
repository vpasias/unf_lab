#!/bin/bash

SCRIPTS_PATH=/home/vagrant/flexirouter/scripts
VPP_PATH=/home/vagrant/flexirouter/vpp/build-root/build-vpp_debug-native/vpp/bin

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 IP1 IP2 IP3"
    exit 2
fi

IP1=$1
IP2=$2
IP2=$3

ip link set dev eth1 down
ip link set dev eth2 down
ip link set dev eth3 down

$VPP_PATH/vppctl exec $SCRIPTS_PATH/init.cli

ip addr add $IP1/24 dev vpp0
ip link set dev vpp0 mtu 1500
ip link set dev vpp0 up
ip addr add $IP2/24 dev vpp1
ip link set dev vpp1 mtu 1500
ip link set dev vpp1 up
ip addr add $IP3/24 dev vpp2
ip link set dev vpp2 mtu 1500
ip link set dev vpp2 up
