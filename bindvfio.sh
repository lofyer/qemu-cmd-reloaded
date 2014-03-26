#!/bin/bash
#modprobe vfio-pci
for var in "$@"; do
	for dev in $(ls /sys/bus/pci/devices/$var/iommu_group/devices); do
		vendor=$(cat /sys/bus/pci/devices/$dev/vendor)
		device=$(cat /sys/bus/pci/devices/$dev/device)
		if [ -e /sys/bus/pci/devices/$dev/driver ]; then
			echo $dev > /sys/bus/pci/devices/$dev/driver/unbind
		fi
		echo $vendor $device > /sys/bus/pci/drivers/vfio-pci/new_id
	done
done
