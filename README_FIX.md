# MockDeviceFragment NoSuchMethodError Fix and Code Improvements

## Quick Summary
This repository contains fixes and improvements for the MockDeviceFragment class:
1. **Original fix**: Removed invalid method call to `getPreferenceManager()` that was causing fatal crashes
2. **Code improvements**: Cleaned up duplicate code, improved error handling, and added comprehensive documentation

## Recent Improvements (Latest Update)

### Code Quality Enhancements
1. **Removed duplicate Android version setting** - Was set twice in initializeDefaultValues()
2. **Removed unused syncPreferenceSummaries() method** - Method was empty but still being called
3. **Improved error handling** - Added try-catch blocks around setSummary calls
4. **Better code structure** - Renamed labels for clarity (check_flag, check_pda_version, etc.)
5. **Comprehensive documentation** - Added detailed class headers to all three smali files

### Files Modified
- `MockDeviceFragment.smali` - Main fragment class (now 807 lines)
- `MockDevicePrefsManager.smali` - Preferences utility class (now 590 lines)
- `MockDeviceFragment$1.smali` - Dialog listener inner class (now 52 lines)

### New Documentation
- `IMPROVEMENTS_SUMMARY.md` - Detailed change log and validation results

For complete details, see [IMPROVEMENTS_SUMMARY.md](IMPROVEMENTS_SUMMARY.md)

---

## Original Problem (Fixed Previously)
```
FATAL EXCEPTION: main
java.lang.NoSuchMethodError: No virtual method getPreferenceManager()Landroidx/preference/j; 
in class Landroidx/preference/z; or its super classes
```

## The Fix
**Location:** `smali/com/idm/fotaagent/enabler/ui/admin/mock/MockDeviceFragment.smali`, lines 638-640

**Changed:** Removed 5 lines of code that tried to incorrectly call `getPreferenceManager()` and `setSharedPreferencesName()`

**Why it works:** The fragment already uses direct SharedPreferences access via `Context.getSharedPreferences("mock_device_prefs", 0)` in all other methods, so the PreferenceManager preference name doesn't matter.

## Technical Details

### Root Cause
The obfuscated androidx.preference library has:
- `Landroidx/preference/z` = PreferenceFragmentCompat
- `Landroidx/preference/F` = PreferenceManager 
- `Landroidx/preference/j` = DialogInterface.OnMultiChoiceClickListener

The buggy code called:
```smali
invoke-virtual {p0}, Landroidx/preference/z;->getPreferenceManager()Landroidx/preference/j;
```

But `getPreferenceManager()` returns `Landroidx/preference/F`, not `j`. Type `j` is completely unrelated (it's a dialog listener interface).

### Why Direct SharedPreferences Access Works
The fragment uses `Context.getSharedPreferences("mock_device_prefs", 0)` in:
- `initializeDefaultValues()` - Loads device info into preferences
- `resetToDefaults()` - Resets preferences to device defaults  
- `onResume()` - Registers preference change listener
- `onPause()` - Unregisters preference change listener
- `onSharedPreferenceChanged()` - Syncs PDA/software version fields

## Files Modified
1. **MockDeviceFragment.smali** - Fixed the crashing method (11 lines changed)
2. **ids.xml** - Fixed XML format (`<id>` → `<item type="id">`)
3. **AndroidManifest.xml** - Updated by apktool
4. **.gitignore** - Added build/ directory
5. **FIX_SUMMARY.md** - Detailed technical documentation
6. **rebuild.sh** - Script to build DEX file
7. **README_FIX.md** - This file

## Building

### Quick Build (DEX only)
```bash
./rebuild.sh
```
This creates `build/classes.dex` (5.2MB) with the fixed code.

### Full APK Build
Due to resource file naming issues in the decompiled APK, use one of these approaches:

**Option 1: Patch existing APK**
```bash
# Extract original APK
unzip original.apk -d original_extracted/

# Replace DEX
cp build/classes.dex original_extracted/

# Repackage
cd original_extracted && zip -r ../patched.apk *

# Sign with your key
jarsigner -keystore your-key.jks patched.apk your-alias
zipalign -v 4 patched.apk final.apk
```

**Option 2: Use apktool (requires fixing resource names)**
```bash
# Fix resource file names with $ symbols first, then:
apktool b -o app.apk .
```

## Validation
✅ Smali syntax validated - compiles without errors  
✅ DEX file builds successfully (5.2MB)  
✅ All SharedPreferences operations verified  
✅ No other code dependencies on removed functionality

## Testing
After applying this fix:
1. The MockDeviceFragment should open without crashes
2. All preference fields should display correctly
3. Editing preferences should save properly
4. PDA version and software version should stay synced

## Need Help?
See `FIX_SUMMARY.md` for more detailed technical information about the fix.
