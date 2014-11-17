#!/bin/bash
qemu-img create -f raw new-hda.raw 20G

#qemu-img create -f qcow2 -o preallocation=metadata centos_test0_preallc.qcow2 20G

#qemu-img convert -f qcow2 -O qcow2 -o preallocation=metadata centos_test0_nopreallc.qcow2        centos_test0_preallc.qcow2
