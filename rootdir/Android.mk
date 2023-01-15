LOCAL_PATH := $(call my-dir)

# Device init scripts

include $(CLEAR_VARS)
LOCAL_MODULE  := fstab.flox
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES  := etc/fstab.debx
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_ETC)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE  := init.flox.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES  := etc/init.debx.rc
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_ETC)/init/hw
include $(BUILD_PREBUILT)
