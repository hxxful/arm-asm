#!/bin/bash
KERNEL=./led/led.bin

qemu-system-aarch64			\
	-M virt				\
	-machine type=virt 		\
	-cpu cortex-a53 		\
	-nographic 			\
	-m 512 				\
	-smp 4 				\
	-kernel ${KERNEL} 		\
	$1 $2
