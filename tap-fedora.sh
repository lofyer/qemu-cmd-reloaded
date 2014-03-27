#!/bin/bash
ulimit -l unlimited
modprobe kvm
modprobe kvm-intel
modprobe vfio
modprobe vfio-pci
modprobe vfio_iommu_type1

tunctl -t tap0
tunctl -t tap1
tunctl -t tap2

brctl addif br0 tap0
brctl addif br0 tap1
brctl addif br0 tap2
