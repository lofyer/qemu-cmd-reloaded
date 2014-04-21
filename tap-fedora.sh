#!/bin/bash
ulimit -l unlimited
modprobe kvm
modprobe kvm-intel
#modprobe kvm-amd
modprobe vfio
modprobe vfio-pci
#modprobe vfio_iommu_type1

tunctl -t tap0
tunctl -t tap1
tunctl -t tap2

ifconfig tap0 up
ifconfig tap1 up
ifconfig tap2 up

brctl addif br0 tap0
brctl addif br0 tap1
brctl addif br0 tap2
