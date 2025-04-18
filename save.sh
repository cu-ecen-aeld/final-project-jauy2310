#!/bin/bash

# get shared constants
cd `dirname $0`
source shared.sh

# create the directory to save the configuration file
mkdir -p base_external/configs/
make -C buildroot savedefconfig BR2_DEFCONFIG=${FINALPROJECT_MODIFIED_DEFCONFIG_REL_BUILDROOT}

# update the kernel configuration (from make linux-menuconfig)
if [ -e buildroot/.config ] && [ ls buildroot/output/build/linux-*/.config 1> /dev/null 2>&1 ]; then
	grep "BR2_LINUX_KERNEL_CUSTOM_CONFIG_FILE" buildroot/.config > /dev/null
	if [ $? -eq 0 ]; then
		echo "Saving linux defconfig"
		make -C buildroot linux-update-defconfig
	fi
fi