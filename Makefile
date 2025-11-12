TARGET := iphone:clang:latest:16.0
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Test

Test_FILES = Tweak.x
Test_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += TestPrefs
include $(THEOS_MAKE_PATH)/aggregate.mk
