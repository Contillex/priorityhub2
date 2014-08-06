ARCHS = armv7 arm64
GO_EASY_ON_ME = 1

include theos/makefiles/common.mk

BUNDLE_NAME = PriorityHub2
PriorityHub2_FILES = PriorityHub.mm
PriorityHub2_INSTALL_PATH = /Library/PreferenceBundles
PriorityHub2_FRAMEWORKS = UIKit
PriorityHub2_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/PriorityHub2.plist$(ECHO_END)
