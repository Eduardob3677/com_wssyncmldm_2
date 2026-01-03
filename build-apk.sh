#!/bin/bash
# Build script for WSSyncMLDM APK

set -e

echo "==================================="
echo "Building WSSyncMLDM APK"
echo "==================================="
echo ""

# Check if apktool is available
if ! command -v apktool &> /dev/null; then
    echo "ERROR: apktool not found!"
    echo "Please install apktool:"
    echo "  - Debian/Ubuntu: sudo apt install apktool"
    echo "  - Or download from: https://ibotpeaches.github.io/Apktool/"
    exit 1
fi

echo "Step 1: Building APK with apktool..."
apktool b -o app.apk .

if [ ! -f app.apk ]; then
    echo "ERROR: Failed to build app.apk"
    exit 1
fi

echo ""
echo "✅ Success! app.apk created"
echo ""
echo "APK Info:"
ls -lh app.apk
echo ""

# Optional: Sign the APK if requested
if [ "$1" == "--sign" ]; then
    echo "Step 2: Signing APK..."
    
    if [ -z "$2" ]; then
        echo "ERROR: Keystore path required for signing"
        echo "Usage: $0 --sign <keystore.jks> [alias]"
        exit 1
    fi
    
    KEYSTORE="$2"
    ALIAS="${3:-mykey}"
    
    if [ ! -f "$KEYSTORE" ]; then
        echo "ERROR: Keystore not found: $KEYSTORE"
        exit 1
    fi
    
    jarsigner -verbose -sigalg SHA256withRSA -digestalg SHA-256 -keystore "$KEYSTORE" app.apk "$ALIAS"
    
    echo ""
    echo "✅ APK signed successfully"
    echo ""
    
    # Zipalign if available
    if command -v zipalign &> /dev/null; then
        echo "Step 3: Optimizing with zipalign..."
        mv app.apk app-unaligned.apk
        zipalign -v 4 app-unaligned.apk app.apk
        rm app-unaligned.apk
        echo "✅ APK aligned successfully"
    fi
fi

echo ""
echo "==================================="
echo "Build Complete!"
echo "==================================="
echo ""
echo "Output: app.apk"
echo "Size: $(du -h app.apk | cut -f1)"
echo ""
echo "Next steps:"
echo "1. Test install: adb install -r app.apk"
echo "2. Or use in Android device tree with device.mk"
echo ""
