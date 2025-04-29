##############################################################
#
# PLATFORM_DRIVER_TEST 
#
##############################################################

PLATFORM_DRIVER_TEST_VERSION = 86f54a4b43bd9ea24aa8b02fd5dd9093e549c67d 
PLATFORM_DRIVER_TEST_SITE = git@github.com:jauy2310/final-project-jauy2310-modules.git
PLATFORM_DRIVER_TEST_SITE_METHOD = git
PLATFORM_DRIVER_TEST_GIT_SUBMODULES = YES

PLATFORM_DRIVER_TEST_MODULE_SUBDIRS += platform_device 

PLATFORM_DRIVER_TEST_MODULE_MAKE_OPTS = KERNELDIR=$(LINUX_DIR) ARCH=$(KERNEL_ARCH)

define PLATFORM_DRIVER_TEST_BUILD_CMDS
    $(MAKE) -C $(@D)/platform_device
endef

define PLATFORM_DRIVER_TEST_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/platform_device/led.ko $(TARGET_DIR)/usr/bin/led.ko
    $(INSTALL) -D -m 0755 $(@D)/platform_device/test_load $(TARGET_DIR)/usr/bin/test_load
    $(INSTALL) -D -m 0755 $(@D)/platform_device/test_unload $(TARGET_DIR)/usr/bin/test_unload
endef

$(eval $(kernel-module))
$(eval $(generic-package))
