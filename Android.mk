LOCAL_PATH := $(call my-dir)

# WSSyncMLDM APK Module
include $(CLEAR_VARS)
LOCAL_MODULE := com.wssyncmldm
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := WSSyncMLDM.apk
LOCAL_MODULE_SUFFIX := .apk
LOCAL_PRIVILEGED_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := app.apk
LOCAL_MODULE_PATH := $(TARGET_OUT)/priv-app/WSSyncMLDM

# DEX preoptimization
LOCAL_DEX_PREOPT := true

# Skip vendor_boot since device uses recovery
LOCAL_PRODUCT_MODULE := false
LOCAL_VENDOR_MODULE := false

include $(BUILD_PREBUILT)
