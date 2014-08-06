ARCHS = armv7 armv7s arm64
TARGET_IPHONEOS_DEPLOYMENT_VERSION = 7.0

##These break building on Linux, uncomment them if you're using OSX
#TARGET_CC = xcrun -sdk iphoneos clang
#TARGET_CXX = xcrun -sdk iphoneos clang++
#TARGET_LD = xcrun -sdk iphoneos clang++

SHARED_CFLAGS = -fobjc-arc
THEOS_BUILD_DIR = debs
GO_EASY_ON_ME = 1

##Set to a 1 to enable debugging
DEBUG = 0

include theos/makefiles/common.mk

TWEAK_NAME = PriorityHub2
PriorityHub2_FILES = Tweak.xm PHController.m UIImage+AverageColor.m
PriorityHub2_FRAMEWORKS = UIKit CoreGraphics CoreTelephony
PriorityHub2_PRIVATE_FRAMEWORKS = IMAVCore

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += preferences
include $(THEOS_MAKE_PATH)/aggregate.mk

after-install::
	install.exec "killall -9 backboardd"
