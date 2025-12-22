# Device Override Implementation Summary

## Overview
This implementation adds a menu to the app that allows changing device values (IMEI, MEID, Manufacturer, Language) to use mock/override values instead of real device values.

## Changes Made

### 1. New String Resources (res/values/strings.xml)
Added the following string resources:
- `device_override` - Menu title
- `device_override_summary` - Menu description
- `device_override_enable` - Enable toggle title
- `device_override_enable_summary` - Enable toggle description
- `device_override_imei` - IMEI override title
- `device_override_imei_summary` - IMEI override description
- `device_override_meid` - MEID override title
- `device_override_meid_summary` - MEID override description
- `device_override_manufacturer` - Manufacturer override title
- `device_override_manufacturer_summary` - Manufacturer override description
- `device_override_language` - Language override title
- `device_override_language_summary` - Language override description

### 2. New Preference Screen (res/xml/device_override_settings.xml)
Created a new preference screen with:
- SwitchPreference to enable/disable override functionality
- EditTextPreference fields for IMEI, MEID, Manufacturer, and Language overrides
- All fields are dependent on the enable switch

### 3. Updated Admin Main Menu (res/xml/admin_main.xml)
Added a new menu item "Device Override Settings" that opens the DeviceOverrideFragment

### 4. New Helper Class (DeviceOverrideHelper)
Created in both Java and Smali:
- `isOverrideEnabled(Context)` - Checks if override is enabled
- `getOverrideImei(Context)` - Returns override IMEI if set
- `getOverrideMeid(Context)` - Returns override MEID if set
- `getOverrideManufacturer(Context)` - Returns override Manufacturer if set
- `getOverrideLanguage(Context)` - Returns override Language if set

All values are stored in SharedPreferences with key "device_override_prefs"

### 5. New Fragment (DeviceOverrideFragment)
Created in both Java and Smali:
- Extends PreferenceFragmentCompat (androidx.preference.z)
- Loads the device_override_settings preference screen
- Accessible from the admin main menu

### 6. Modified IDMDeviceInfoAdapter
Updated the following methods to check for override values:
- `idmGetDeviceID(Context)` - Now checks for override IMEI/MEID first before getting real device ID
- `idmGetDeviceLanguage(Context)` - Now checks for override language first before getting real device language

## How It Works

1. User navigates to Admin Main Activity
2. User selects "Device Override Settings" from the menu
3. User enables "Enable Device Override" switch
4. User enters mock values for IMEI, MEID, Manufacturer, or Language
5. Values are saved to SharedPreferences
6. When the app queries device information through IDMDeviceInfoAdapter:
   - If override is enabled and a mock value exists, it returns the mock value
   - Otherwise, it returns the real device value

## Files Created/Modified

### Created:
- `/res/xml/device_override_settings.xml`
- `/jadx-output/sources/com/idm/fotaagent/enabler/ui/admin/deviceoverride/DeviceOverrideFragment.java`
- `/jadx-output/sources/com/idm/fotaagent/enabler/ui/admin/deviceoverride/DeviceOverrideHelper.java`
- `/smali/com/idm/fotaagent/enabler/ui/admin/deviceoverride/DeviceOverrideFragment.smali`
- `/smali/com/idm/fotaagent/enabler/ui/admin/deviceoverride/DeviceOverrideHelper.smali`

### Modified:
- `/res/values/strings.xml` - Added new string resources
- `/res/xml/admin_main.xml` - Added menu item for device override
- `/smali/com/idm/adapter/deviceinfo/IDMDeviceInfoAdapter.smali` - Modified idmGetDeviceID and idmGetDeviceLanguage methods
- `/jadx-output/sources/com/idm/adapter/deviceinfo/IDMDeviceInfoAdapter.java` - Modified methods and added import

## Building the APK

To rebuild the APK with these changes:

```bash
cd /home/runner/work/com_wssyncmldm_2/com_wssyncmldm_2
apktool b -o app-modified.apk .
```

Note: The existing APK has pre-existing issues with resource file naming (files with '$' in drawable names) and ids.xml format that may cause build errors. These are unrelated to the current changes and were present in the original decompiled APK.

To work around these issues, you may need to:
1. Rename files with invalid characters
2. Convert ids.xml to use `<item type="id">` format
3. Use alternative build tools or APK manipulation tools

## Testing

To test the functionality:
1. Install the modified APK on a device
2. Open the app and navigate to Admin Main Activity
3. Select "Device Override Settings"
4. Enable the override and set mock values
5. Navigate to "Device Status" in the admin menu
6. Verify that the mock values are displayed instead of real device values
7. Disable the override and verify that real values are shown again
