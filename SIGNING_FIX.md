# APK Signing Fix - Min SDK Version Parameter

## Problem
When signing Android APKs or ZIP files without a properly accessible AndroidManifest.xml, the signing tool (SignApk) fails with:
```
java.lang.IllegalArgumentException: Cannot detect minSdkVersion. Use --min-sdk-version to override
Caused by: com.android.apksig.apk.MinSdkVersionException: No AndroidManifest.xml in APK
```

This error occurs because:
1. The signing tool needs to know the minimum SDK version for proper signature algorithm selection
2. When the AndroidManifest.xml is not accessible or not in the expected location, it cannot auto-detect this value
3. Without this information, the signing process fails

## Solution
Always specify the `--min-sdk-version` parameter when signing APKs, especially when:
- Signing repackaged APKs
- Signing ROM zip files
- Working with APKs that have non-standard structures
- The AndroidManifest.xml is not directly accessible to the signing tool

## Implementation

### For This Project (com_wssyncmldm_2)
The `minSdkVersion` is defined in `apktool.yml`:
```yaml
sdkInfo:
  minSdkVersion: 33
  targetSdkVersion: 34
```

### Updated Scripts

#### 1. rebuild.sh
Updated to automatically detect and display the minSdkVersion from apktool.yml:
- Extracts `minSdkVersion: 33` from apktool.yml
- Includes it in the signing command examples
- Provides clear guidance on proper signing

#### 2. build-and-sign.sh (NEW)
Comprehensive build and sign script that:
- Automatically extracts minSdkVersion from apktool.yml
- Builds the DEX file from smali
- Optionally repackages the APK if original.apk is present
- Provides detailed signing instructions with proper --min-sdk-version parameter

### Signing Commands

#### Using signapk.jar (Recommended)
```bash
java -jar signapk.jar --min-sdk-version 33 \
  testkey.x509.pem testkey.pk8 \
  build/patched.apk build/signed.apk
```

#### Using apksigner (Android SDK)
```bash
apksigner sign --ks your-keystore.jks \
  --min-sdk-version 33 \
  --out build/signed.apk \
  build/patched.apk
```

#### Using jarsigner (Older Method)
```bash
jarsigner -keystore your-key.jks build/patched.apk your-alias
zipalign -v 4 build/patched.apk build/signed.apk
```
Note: jarsigner doesn't support --min-sdk-version directly, but it uses older signing schemes that don't require it. However, for modern Android versions (API 24+), use signapk or apksigner.

## Why This Fix Works

### Signature Scheme Selection
Android uses different signature schemes based on the minimum SDK version:
- API level 18-23: JAR signing (v1 scheme)
- API level 24+: APK Signature Scheme v2 (v2 scheme)
- API level 28+: APK Signature Scheme v3 (v3 scheme)
- API level 30+: APK Signature Scheme v4 (v4 scheme)

The signing tool needs to know the minSdkVersion to:
1. Select the appropriate signature scheme(s)
2. Apply the correct cryptographic algorithms
3. Generate compatible signatures for the target Android versions

### Why Auto-Detection Fails
The signing tool tries to auto-detect minSdkVersion by:
1. Parsing AndroidManifest.xml from the APK
2. Looking for the `android:minSdkVersion` attribute

This fails when:
- The APK structure is non-standard (repackaged)
- AndroidManifest.xml is in a different location
- Signing a non-APK file (like a ROM zip)
- The manifest is encrypted or obfuscated

### Explicit Parameter Benefits
By explicitly providing `--min-sdk-version 33`:
- Bypasses auto-detection completely
- Ensures correct signature scheme selection
- Makes the build process deterministic
- Documents the minimum supported Android version

## Testing
To test the fix:
1. Run `./build-and-sign.sh` to build and prepare the APK
2. Sign using one of the provided methods with --min-sdk-version 33
3. Verify the signed APK installs on Android 13+ devices (API 33+)

## Related Files Modified
- `rebuild.sh` - Updated with min-sdk-version in signing examples
- `build-and-sign.sh` - New comprehensive build and sign script
- `SIGNING_FIX.md` - This documentation

## References
- Android APK Signature Scheme: https://source.android.com/docs/security/features/apksigning
- SignApk documentation in AOSP
- apktool.yml specification
