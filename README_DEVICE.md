# Device Configuration - device.mk

## Overview
This configuration is for devices that **DO NOT use vendor_boot partition** and instead use the **recovery partition** for boot modifications.

## Key Configuration Points

### No Vendor Boot Support
```makefile
BOARD_USES_VENDOR_BOOT := false
TARGET_NO_VENDOR_BOOT := true
BOARD_SKIP_VENDOR_BOOT_IMAGE := true
```

The device does not support or use the vendor_boot partition that was introduced in Android 11+. Instead, it uses traditional boot.img layout.

### Recovery Partition Usage
```makefile
BOARD_USES_RECOVERY_AS_BOOT := false
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_RECOVERY_FSTAB := device/generic/recovery.fstab
BOARD_RECOVERY_KERNEL_MODULES := true
```

The device uses a separate recovery partition for recovery operations and device-specific boot modifications.

### Boot Header Version
```makefile
BOARD_BOOT_HEADER_VERSION := 2
```

Uses boot header version 2, which is the traditional boot.img format without vendor_boot partition.

## Integration with Android Build System

### Files Included
1. **device.mk** - Main device configuration
2. **Android.mk** - Build module for WSSyncMLDM APK

### Usage in Device Tree

To use this configuration in your device tree, add to your device's main makefile:

```makefile
# Include WSSyncMLDM configuration
$(call inherit-product, path/to/com_wssyncmldm_2/device.mk)
```

### Building the APK

Before building your ROM, you need to create the app.apk file from the decompiled source:

```bash
# Using the provided script
./build-apk.sh

# Or manually with apktool
apktool b -o app.apk .
```

This will create `app.apk` which will be included in the ROM build.

### Building the ROM

When building your ROM:

```bash
# Standard build commands
. build/envsetup.sh
lunch <device_name>
make -j$(nproc)
```

The WSSyncMLDM app will be included in the system partition at `/system/priv-app/WSSyncMLDM/`.

## APK Installation

The APK is installed as a privileged system app:
- **Location**: `/system/priv-app/WSSyncMLDM/WSSyncMLDM.apk`
- **Type**: Privileged system application
- **Certificate**: Pre-signed (PRESIGNED)

## Compatibility

This configuration is designed for devices that:
- Use traditional boot.img format (not GKI with vendor_boot)
- Have a separate recovery partition
- Run Android 10 or compatible versions with boot header version 2
- Do not support the vendor_boot partition scheme

## Version Information

- **Package**: com.wssyncmldm
- **Version**: 4.3.27
- **Version Code**: 432700000
- **Min SDK**: 33
- **Target SDK**: 34

## Notes

### Why No Vendor Boot?

Some devices, especially older devices or custom implementations, don't use the Generic Kernel Image (GKI) architecture that requires vendor_boot. These devices use:
- Single boot.img containing kernel + ramdisk
- Separate recovery partition for recovery mode
- Traditional partition layout

### Recovery vs Recovery-as-Boot

This configuration uses:
- `BOARD_USES_RECOVERY_AS_BOOT := false` - Separate recovery partition
- `BOARD_INCLUDE_RECOVERY_DTBO := true` - Recovery DTBO support

If your device uses recovery-as-boot (no separate recovery partition), you would set:
```makefile
BOARD_USES_RECOVERY_AS_BOOT := true
```

## Troubleshooting

### If Build Fails

1. **Check partition layout**: Verify your device doesn't actually require vendor_boot
2. **Verify boot header version**: May need to adjust `BOARD_BOOT_HEADER_VERSION`
3. **Recovery fstab**: Update `TARGET_RECOVERY_FSTAB` in device.mk to point to your device's fstab
   - Common locations:
     - `device/<vendor>/<device>/recovery.fstab`
     - `device/<vendor>/<device>/recovery/root/etc/recovery.fstab`
   - The default `device/generic/recovery.fstab` is a placeholder
4. **APK not found**: Run `./build-apk.sh` to build app.apk before ROM build

### If APK Not Installed

1. Check system partition has space
2. Verify APK file exists at source location
3. Check SELinux contexts are correct

## References

- [Android Boot Flow](https://source.android.com/docs/core/architecture/bootloader)
- [Android Partitions](https://source.android.com/docs/core/architecture/partitions)
- [GKI Overview](https://source.android.com/docs/core/architecture/kernel/generic-kernel-image)
