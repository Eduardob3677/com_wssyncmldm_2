#!/bin/bash
set -e

# Build and Sign APK Script
# This script builds the DEX file and provides guidance for signing with proper minSdkVersion

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Get minSdkVersion from apktool.yml
MIN_SDK_VERSION=$(grep "minSdkVersion:" apktool.yml | awk '{print $2}' | grep -o '[0-9]*' | head -1)
if [ -z "$MIN_SDK_VERSION" ] || ! [[ "$MIN_SDK_VERSION" =~ ^[0-9]+$ ]]; then
    echo -e "${YELLOW}Warning: Could not find valid minSdkVersion in apktool.yml, using default: 33${NC}"
    MIN_SDK_VERSION=33
fi

echo -e "${GREEN}=== Building APK ===${NC}"
echo "Detected minSdkVersion: $MIN_SDK_VERSION"
echo ""

# Create build directory if it doesn't exist
mkdir -p build

# Step 1: Build DEX from smali
echo -e "${GREEN}[1/4] Building DEX file from smali...${NC}"
if ! command -v smali &> /dev/null; then
    echo -e "${RED}Error: smali command not found. Please install smali.${NC}"
    exit 1
fi

smali a smali -o build/classes.dex
echo -e "${GREEN}✓ DEX file created: build/classes.dex${NC}"
echo ""

# Step 2: Check for original APK
if [ -f "original.apk" ] || [ -f "original/app.apk" ]; then
    ORIGINAL_APK=""
    if [ -f "original.apk" ]; then
        ORIGINAL_APK="original.apk"
    elif [ -f "original/app.apk" ]; then
        ORIGINAL_APK="original/app.apk"
    fi
    
    echo -e "${GREEN}[2/4] Found original APK: $ORIGINAL_APK${NC}"
    
    # Check for required tools
    if ! command -v unzip &> /dev/null; then
        echo -e "${RED}Error: unzip command not found. Please install unzip.${NC}"
        exit 1
    fi
    if ! command -v zip &> /dev/null; then
        echo -e "${RED}Error: zip command not found. Please install zip.${NC}"
        exit 1
    fi
    
    echo "Extracting original APK..."
    
    # Clean and create extraction directory
    rm -rf build/original_extracted
    mkdir -p build/original_extracted
    
    unzip -q "$ORIGINAL_APK" -d build/original_extracted
    echo -e "${GREEN}✓ APK extracted to build/original_extracted${NC}"
    echo ""
    
    # Step 3: Replace DEX
    echo -e "${GREEN}[3/4] Replacing classes.dex...${NC}"
    cp build/classes.dex build/original_extracted/
    echo -e "${GREEN}✓ DEX file replaced${NC}"
    echo ""
    
    # Step 4: Repackage
    echo -e "${GREEN}[4/4] Repackaging APK...${NC}"
    cd build/original_extracted
    zip -q -r ../patched.apk *
    cd ../..
    echo -e "${GREEN}✓ Patched APK created: build/patched.apk${NC}"
    echo ""
    
    # Signing instructions
    echo -e "${YELLOW}=== Signing Instructions ===${NC}"
    echo "To sign the patched APK, use one of the following methods:"
    echo ""
    echo "Method 1: Using signapk.jar (recommended for this project)"
    echo "  java -jar signapk.jar --min-sdk-version $MIN_SDK_VERSION \\"
    echo "    testkey.x509.pem testkey.pk8 \\"
    echo "    build/patched.apk build/signed.apk"
    echo ""
    echo "Method 2: Using apksigner (Android SDK)"
    echo "  apksigner sign --ks your-keystore.jks \\"
    echo "    --min-sdk-version $MIN_SDK_VERSION \\"
    echo "    --out build/signed.apk \\"
    echo "    build/patched.apk"
    echo ""
    echo "Method 3: Using jarsigner (older method)"
    echo "  jarsigner -keystore your-key.jks build/patched.apk your-alias"
    echo "  zipalign -v 4 build/patched.apk build/signed.apk"
    echo ""
    echo -e "${GREEN}Note: --min-sdk-version $MIN_SDK_VERSION is required to avoid signing errors${NC}"
    
else
    echo -e "${YELLOW}[2/4] No original APK found${NC}"
    echo "To complete the build, you need to:"
    echo "1. Place the original APK as 'original.apk' in this directory, OR"
    echo "2. Fix resource file names and run: apktool b -o build/app.apk ."
    echo ""
    echo "Then run this script again."
fi

echo ""
echo -e "${GREEN}=== Build Complete ===${NC}"
echo "Files created:"
echo "  - build/classes.dex (DEX file with fixed code)"
if [ -f "build/patched.apk" ]; then
    echo "  - build/patched.apk (unsigned APK ready for signing)"
fi
