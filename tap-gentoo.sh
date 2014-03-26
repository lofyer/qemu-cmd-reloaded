#!/bin/bash
ulimit -l unlimited
modprobe kvm
modprobe kvm-intel
modprobe vfio
modprobe vfio-pci
modprobe vfio_iommu_type1
brctl addif br0 tap0
brctl addif br0 tap1
brctl addif br0 tap2
brctl addif br0 tap3
brctl addif br0 tap4
