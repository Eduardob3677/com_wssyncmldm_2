#!/bin/bash
# OAuth Profile Validation Script
# Validates the profile configuration files and checks connectivity

set -e

echo "======================================================"
echo "  FOTA Agent OAuth Profile Validation"
echo "======================================================"
echo ""

# Colors for output
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Validation results
PASSED=0
FAILED=0
WARNINGS=0

# Function to print status
print_status() {
    local status=$1
    local message=$2
    
    if [ "$status" == "PASS" ]; then
        echo -e "${GREEN}✓${NC} $message"
        ((PASSED++))
    elif [ "$status" == "FAIL" ]; then
        echo -e "${RED}✗${NC} $message"
        ((FAILED++))
    elif [ "$status" == "WARN" ]; then
        echo -e "${YELLOW}⚠${NC} $message"
        ((WARNINGS++))
    else
        echo "  $message"
    fi
}

echo "Validating configuration files..."
echo ""

# Check if configuration files exist
if [ -f "profile_config.properties" ]; then
    print_status "PASS" "profile_config.properties exists"
else
    print_status "FAIL" "profile_config.properties not found"
fi

if [ -f "profile_config.json" ]; then
    print_status "PASS" "profile_config.json exists"
else
    print_status "FAIL" "profile_config.json not found"
fi

if [ -f "setup_profile_adb.sh" ]; then
    print_status "PASS" "setup_profile_adb.sh exists"
    
    # Check if executable
    if [ -x "setup_profile_adb.sh" ]; then
        print_status "PASS" "setup_profile_adb.sh is executable"
    else
        print_status "WARN" "setup_profile_adb.sh is not executable (run: chmod +x setup_profile_adb.sh)"
    fi
else
    print_status "FAIL" "setup_profile_adb.sh not found"
fi

if [ -f "PROFILE_SETUP_README.md" ]; then
    print_status "PASS" "PROFILE_SETUP_README.md exists"
else
    print_status "FAIL" "PROFILE_SETUP_README.md not found"
fi

echo ""
echo "Validating configuration values..."
echo ""

# Validate properties file
if [ -f "profile_config.properties" ]; then
    # Check for required fields
    if grep -q "profile.name=fotaagent" profile_config.properties; then
        print_status "PASS" "Profile name is correctly set to 'fotaagent'"
    else
        print_status "FAIL" "Profile name is missing or incorrect"
    fi
    
    if grep -q "server.address=https://dms.ospserver.net/v1/device/magics" profile_config.properties; then
        print_status "PASS" "Server address is correctly configured"
    else
        print_status "FAIL" "Server address is missing or incorrect"
    fi
    
    if grep -q "server.id=x6g1q14r75" profile_config.properties; then
        print_status "PASS" "Server ID is correctly configured"
    else
        print_status "FAIL" "Server ID is missing or incorrect"
    fi
    
    if grep -q "server.auth.type=syncml:auth-md5" profile_config.properties; then
        print_status "PASS" "Server auth type is correctly set to 'syncml:auth-md5'"
    else
        print_status "FAIL" "Server auth type is missing or incorrect"
    fi
    
    if grep -q "client.id=IMEI:352496803361546" profile_config.properties; then
        print_status "PASS" "Client ID is correctly configured"
    else
        print_status "FAIL" "Client ID is missing or incorrect"
    fi
    
    if grep -q "client.auth.type=syncml:auth-md5" profile_config.properties; then
        print_status "PASS" "Client auth type is correctly set to 'syncml:auth-md5'"
    else
        print_status "FAIL" "Client auth type is missing or incorrect"
    fi
fi

echo ""
echo "Checking network connectivity..."
echo ""

# Check if curl is available
if command -v curl &> /dev/null; then
    print_status "PASS" "curl is installed"
    
    # Try to reach the server (just check if it responds)
    echo "  Testing server connectivity..."
    
    if curl -s --connect-timeout 5 --max-time 10 -I "https://dms.ospserver.net" > /dev/null 2>&1; then
        print_status "PASS" "Server dms.ospserver.net is reachable"
    else
        print_status "WARN" "Cannot reach dms.ospserver.net (might be network/firewall issue)"
    fi
else
    print_status "WARN" "curl not installed - cannot test server connectivity"
fi

echo ""
echo "Checking for ADB..."
echo ""

# Check if ADB is available
if command -v adb &> /dev/null; then
    print_status "PASS" "ADB is installed"
    
    # Check for connected devices
    DEVICE_COUNT=$(adb devices | grep -c "device$" || echo "0")
    
    if [ "$DEVICE_COUNT" -gt 0 ]; then
        print_status "PASS" "Found $DEVICE_COUNT Android device(s) connected"
        echo ""
        echo "Connected devices:"
        adb devices | grep "device$" | awk '{print "  - "$1}'
    else
        print_status "WARN" "No Android devices detected via ADB"
    fi
else
    print_status "WARN" "ADB not installed - cannot configure device automatically"
    echo "         Install ADB from: https://developer.android.com/studio/command-line/adb"
fi

echo ""
echo "======================================================"
echo "  Validation Summary"
echo "======================================================"
echo ""
echo -e "${GREEN}Passed:${NC}   $PASSED"
echo -e "${YELLOW}Warnings:${NC} $WARNINGS"
echo -e "${RED}Failed:${NC}   $FAILED"
echo ""

if [ $FAILED -eq 0 ]; then
    echo -e "${GREEN}✓ Validation completed successfully!${NC}"
    echo ""
    echo "Next steps:"
    echo "  1. Review the configuration files"
    echo "  2. Configure the profile on your device using one of these methods:"
    echo "     - Manual configuration via app UI (see QUICK_START.md)"
    echo "     - ADB setup script (run: ./setup_profile_adb.sh)"
    echo "  3. Test firmware download functionality"
    echo ""
    echo "For detailed instructions, see: PROFILE_SETUP_README.md"
    exit 0
else
    echo -e "${RED}✗ Validation failed with $FAILED error(s)${NC}"
    echo ""
    echo "Please fix the errors above and run validation again."
    echo "To regenerate configuration files, run: ./setup_oauth_profile.sh"
    exit 1
fi
