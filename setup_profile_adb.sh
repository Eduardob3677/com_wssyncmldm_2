#!/bin/bash
# ADB commands to set up the FOTA Agent profile on an Android device
# Run this script after connecting your device via ADB

set -e

echo "======================================================"
echo "  Setting up FOTA Agent Profile via ADB"
echo "======================================================"
echo ""

# Check if device is connected
if ! adb devices | grep -q "device$"; then
    echo "ERROR: No Android device detected via ADB"
    echo "Please connect your device and enable USB debugging"
    exit 1
fi

echo "Device detected. Setting up profile..."
echo ""

# Profile configuration values
PROFILE_NAME="fotaagent"
SERVER_ADDRESS="https://dms.ospserver.net/v1/device/magics"
SERVER_ID="x6g1q14r75"
SERVER_PASSWORD="T1NQIERNIFNIcnZIcg=="
SERVER_AUTH_TYPE="syncml:auth-md5"
CLIENT_ID="IMEI:352496803361546"
CLIENT_PASSWORD="74V1gEt664mAKin01"
CLIENT_AUTH_TYPE="syncml:auth-md5"

# Package name
PACKAGE_NAME="com.wssyncmldm"

# Set profile values using ADB broadcast intents
# Note: This approach may need adjustment based on how the app handles configuration

# Alternative: Using SharedPreferences (requires root or debuggable app)
echo "Attempting to configure profile via SharedPreferences..."

# Create a temporary SQL file for direct database access (if accessible)
cat > /tmp/profile_setup.sql << SQLEOF
-- Insert or update the fotaagent profile
INSERT OR REPLACE INTO profile_table (
    name,
    serverId,
    serverPwd,
    serverNonce,
    serverAuthtype,
    serverUrl,
    clientId,
    clientPwd,
    clientNonce,
    clientAuthtype,
    active
) VALUES (
    '$PROFILE_NAME',
    '$SERVER_ID',
    '$SERVER_PASSWORD',
    '',
    '$SERVER_AUTH_TYPE',
    '$SERVER_ADDRESS',
    '$CLIENT_ID',
    '$CLIENT_PASSWORD',
    '',
    '$CLIENT_AUTH_TYPE',
    1
);
SQLEOF

echo ""
echo "Profile configuration SQL generated at /tmp/profile_setup.sql"
echo ""
echo "To apply this configuration, you have the following options:"
echo ""
echo "Option 1: Manual Configuration via App UI"
echo "  1. Open the FOTA Agent app on your device"
echo "  2. Navigate to DM Settings > Profile Configuration"
echo "  3. Enter the following values:"
echo "     - Profile Name:      $PROFILE_NAME"
echo "     - Server Address:    $SERVER_ADDRESS"
echo "     - Server ID:         $SERVER_ID"
echo "     - Server Password:   $SERVER_PASSWORD"
echo "     - Server Auth Type:  $SERVER_AUTH_TYPE"
echo "     - Client ID:         $CLIENT_ID"
echo "     - Client Password:   $CLIENT_PASSWORD"
echo "     - Client Auth Type:  $CLIENT_AUTH_TYPE"
echo "  4. Save the profile"
echo ""
echo "Option 2: Using ADB with root access"
echo "  Run the following commands (requires rooted device):"
echo "  adb root"
echo "  adb shell 'sqlite3 /data/data/$PACKAGE_NAME/databases/fotaagent.db < /sdcard/profile_setup.sql'"
echo ""
echo "Option 3: Using the profile import feature (if available in app)"
echo "  1. Push the profile configuration to device:"
echo "     adb push profile_config.properties /sdcard/Download/"
echo "  2. Use the app's import feature to load the configuration"
echo ""
echo "======================================================"
echo "  Configuration Details Saved"
echo "======================================================"

