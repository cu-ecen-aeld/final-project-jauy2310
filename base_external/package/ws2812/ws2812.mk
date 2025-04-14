# Configure package contents
WS2812_VERSION = 8f806eb68ee462222cc47e3320473d1384becdb0
WS2812_SITE = git@github.com:jauy2310/final-project-jauy2310-modules.git
WS2812_SITE_METHOD = git
WS2812_GIT_SUBMODULES = YES

WS2812_MODULE_MAKE_OPTS = KERNELDIR=$(LINUX_DIR)

$(eval $(kernel-module))
$(eval $(generic-package))
