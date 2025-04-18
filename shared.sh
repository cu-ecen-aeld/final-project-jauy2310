#!/bin/bash
# file with shared constants across build scripts

# default configuration location
FINALPROJECT_DEFCONFIG=configs/raspberrypi3_64_defconfig

# store customization to the qemu configurations
MODIFIED_FINALPROJECT_DEFCONFIG=base_external/configs/aesd_finalproject_defconfig

# defconfig variables
FINALPROJECT_DEFAULT_DEFCONFIG=${FINALPROJECT_DEFCONFIG}
FINALPROJECT_MODIFIED_DEFCONFIG=${MODIFIED_FINALPROJECT_DEFCONFIG}
FINALPROJECT_MODIFIED_DEFCONFIG_REL_BUILDROOT=../${FINALPROJECT_MODIFIED_DEFCONFIG}

# define external buildroot tree
EXTERNAL_REL_BUILDROOT=../base_external