##############################################################
#
# WS2812
#
##############################################################

WS2812_VERSION = 1617d98b322d17f09ed40acd41101c07e656c3b5
WS2812_SITE = git@github.com:jauy2310/final-project-jauy2310-modules.git
WS2812_SITE_METHOD = git
WS2812_GIT_SUBMODULES = YES

WS2812_MODULE_SUBDIRS = ws2812

WS2812_MODULE_MAKE_OPTS = KERNELDIR=$(LINUX_DIR) ARCH=$(KERNEL_ARCH)

define WS2812_BUILD_CMDS
	$(MAKE) -C $(@D)/ws2812 
endef

define WS2812_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/ws2812/ws2812.ko $(TARGET_DIR)/usr/bin/ws2812.ko
	$(INSTALL) -D -m 0755 $(@D)/ws2812/module_load $(TARGET_DIR)/usr/bin/module_load
	$(INSTALL) -D -m 0755 $(@D)/ws2812/module_unload $(TARGET_DIR)/usr/bin/module_unload
endef

$(eval $(kernel-module))
$(eval $(generic-package))
