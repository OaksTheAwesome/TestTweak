TARGET := iphone:clang:latest:

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = TestPrefs

TestPrefs_FILES = TSTRootListController.m
TestPrefs_FRAMEWORKS = UIKit
TestPrefs_PRIVATE_FRAMEWORKS = Preferences
TestPrefs_INSTALL_PATH = /Library/PreferenceBundles
TestPrefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
