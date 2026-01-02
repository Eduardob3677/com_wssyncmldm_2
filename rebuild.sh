#!/bin/bash
set -e

# Get minSdkVersion from apktool.yml
MIN_SDK_VERSION=$(grep "minSdkVersion:" apktool.yml | awk '{print $2}')
if [ -z "$MIN_SDK_VERSION" ]; then
    echo "Warning: Could not find minSdkVersion in apktool.yml, using default: 33"
    MIN_SDK_VERSION=33
fi

echo "Building DEX file from smali..."
smali a smali -o build/classes.dex

echo "DEX file created successfully at build/classes.dex"
echo ""
echo "Note: Complete APK rebuild requires handling resource files with invalid names."
echo "You can use the following approaches:"
echo ""
echo "1. If you have the original APK:"
echo "   - Extract it: unzip original.apk -d original_extracted/"
echo "   - Replace classes.dex: cp build/classes.dex original_extracted/"
echo "   - Repackage: cd original_extracted && zip -r ../patched.apk *"
echo "   - Sign the APK using your signing key with --min-sdk-version:"
echo "     java -jar signapk.jar --min-sdk-version $MIN_SDK_VERSION testkey.x509.pem testkey.pk8 patched.apk signed.apk"
echo ""
echo "2. Or use a DEX patching tool to replace only the classes.dex in the original APK"
echo ""
echo "3. Or fix the resource file names and use: apktool b -o app.apk ."
echo ""
echo "Detected minSdkVersion: $MIN_SDK_VERSION (from apktool.yml)"
