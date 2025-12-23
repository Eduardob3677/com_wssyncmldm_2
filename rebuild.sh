#!/bin/bash
set -e

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
echo "   - Sign the APK using your signing key"
echo ""
echo "2. Or use a DEX patching tool to replace only the classes.dex in the original APK"
echo ""
echo "3. Or fix the resource file names and use: apktool b -o app.apk ."
