#!/bin/bash
qemu-kvm -m 1024 -drive file=centos58-RAW.img,index=0,if=scsi,format=raw -boot c -net nic -net user -nographic -vnc :1 -option-rom 8xx_64.rom,bootindex=1
