# Device configuration for com.wssyncmldm
# This device does not use vendor_boot, uses recovery partition instead

# Product packages
PRODUCT_PACKAGES += \
    com.wssyncmldm

# APK will be built from source or provided separately
# If you have a pre-built APK, place it as app.apk and uncomment:
# PRODUCT_COPY_FILES += \
#     $(LOCAL_PATH)/app.apk:$(TARGET_COPY_OUT_SYSTEM)/priv-app/WSSyncMLDM/WSSyncMLDM.apk

# Device specific properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.wssyncmldm.version=4.3.27

# Boot configuration - Use recovery instead of vendor_boot
# This device uses recovery partition for boot modifications
BOARD_USES_RECOVERY_AS_BOOT := false
BOARD_USES_VENDOR_BOOT := false

# Recovery partition configuration
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_RECOVERY_FSTAB := device/generic/recovery.fstab

# Kernel modules in recovery
BOARD_VENDOR_KERNEL_MODULES_LOAD_RAW := false
BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD := false

# Use recovery ramdisk for device-specific modules
BOARD_RECOVERY_KERNEL_MODULES := true

# Device doesn't support vendor_boot partition
TARGET_NO_VENDOR_BOOT := true

# Use traditional boot.img layout
BOARD_BOOT_HEADER_VERSION := 2

# Skip vendor_boot image generation
BOARD_SKIP_VENDOR_BOOT_IMAGE := true
