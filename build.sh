#!/bin/bash

# get shared constants
cd `dirname $0`
source shared.sh

# make from the buildroot directory
if [ ! -e buildroot/.config ]
then
	# buildroot/.config file missing - buildroot's default configuration that should be auto-saved after using menuconfig
	echo "MISSING BUILDROOT CONFIGURATION FILE"

	# check if there's a project-specific default configuration file stored at the environment variable below
	if [ -e ${FINALPROJECT_MODIFIED_DEFCONFIG} ]
	then
		# project-specific default configuration file found; perform a make in the buildroot directory using this
		echo "USING ${FINALPROJECT_MODIFIED_DEFCONFIG}"
		make -C buildroot defconfig BR2_EXTERNAL=${EXTERNAL_REL_BUILDROOT} BR2_DEFCONFIG=${FINALPROJECT_MODIFIED_DEFCONFIG_REL_BUILDROOT}
	else
		# project-specific default configuration file NOT found; use the base raspberrypi3_64_defconfig configuration
		echo "FINALPROJECT DEFCONFIG NOT FOUND"
		echo "Use 'make menuconfig' in the buildroot directory and save the configuration file to ${FINALPROJECT_DEFAULT_DEFCONFIG}"
		make -C buildroot defconfig BR2_EXTERNAL=${EXTERNAL_REL_BUILDROOT} BR2_DEFCONFIG=${FINALPROJECT_DEFAULT_DEFCONFIG}
	fi
else
	echo "USING EXISTING BUILDROOT CONFIGURATION FILE"

	make -C buildroot BR2_EXTERNAL=${EXTERNAL_REL_BUILDROOT}
fi
