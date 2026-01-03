LOCAL_PATH := $(call my-dir)

# WSSyncMLDM APK Module
# Note: This module expects either:
# 1. A pre-built app.apk file in this directory, OR
# 2. The APK to be built from source using apktool
#
# To build from source and create app.apk:
#   apktool b -o app.apk .

include $(CLEAR_VARS)
LOCAL_MODULE := com.wssyncmldm
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := WSSyncMLDM.apk
LOCAL_MODULE_SUFFIX := .apk
LOCAL_PRIVILEGED_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED

# Only include if app.apk exists (conditional build)
ifeq ($(wildcard $(LOCAL_PATH)/app.apk),$(LOCAL_PATH)/app.apk)
LOCAL_SRC_FILES := app.apk
LOCAL_MODULE_PATH := $(TARGET_OUT)/priv-app/WSSyncMLDM

# DEX preoptimization
LOCAL_DEX_PREOPT := true

# Skip vendor_boot since device uses recovery
LOCAL_PRODUCT_MODULE := false
LOCAL_VENDOR_MODULE := false

include $(BUILD_PREBUILT)
else
$(warning WSSyncMLDM: app.apk not found, skipping. Build APK with: apktool b -o app.apk .)
endif
