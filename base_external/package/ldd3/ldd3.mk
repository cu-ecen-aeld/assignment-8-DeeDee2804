
##############################################################
#
# LDD3
#
##############################################################

# Fill up the contents below in order to reference your assignment 7 git contents
LDD3_VERSION = 'c3db725ad00e99a01ab679c0fa1613e691714af9'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD3_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-DeeDee2804.git'
LDD3_SITE_METHOD = git

LDD3_MODULE_SUBDIRS = scull
LDD3_MODULE_SUBDIRS += misc-modules

# Add module load and unload to correct folder
define LDD3_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0775 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))
