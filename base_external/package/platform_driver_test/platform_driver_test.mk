##############################################################
#
# PLATFORM_DRIVER_TEST 
#
##############################################################

PLATFORM_DRIVER_TEST_VERSION = b1d53e0093f86eb8bcbf07e70b5deb7040a652ef 
PLATFORM_DRIVER_TEST_SITE = git@github.com:jauy2310/final-project-jauy2310-modules.git
PLATFORM_DRIVER_TEST_SITE_METHOD = git
PLATFORM_DRIVER_TEST_GIT_SUBMODULES = YES

PLATFORM_DRIVER_TEST_MODULE_SUBDIRS = platform_device 

PLATFORM_DRIVER_TEST_MODULE_MAKE_OPTS = KERNELDIR=$(LINUX_DIR) ARCH=$(KERNEL_ARCH)

define PLATFORM_DRIVER_TEST_BUILD_CMDS
	$(MAKE) -C $(@D)/platform_device
endef

define PLATFORM_DRIVER_TEST_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/platform_device/platform_device.ko $(TARGET_DIR)/usr/bin/platform_device.ko
	$(INSTALL) -D -m 0755 $(@D)/platform_device/test_load $(TARGET_DIR)/usr/bin/test_load
	$(INSTALL) -D -m 0755 $(@D)/platform_device/test_unload $(TARGET_DIR)/usr/bin/test_unload
endef

$(eval $(kernel-module))
$(eval $(generic-package))
