#!/bin/bash
# OAuth Profile Setup Script for FOTA Agent
# This script sets up the OAuth profile configuration for downloading firmware

set -e

# OAuth Profile Configuration
PROFILE_NAME="fotaagent"
SERVER_ADDRESS="https://dms.ospserver.net/v1/device/magics"
SERVER_ID="x6g1q14r75"
SERVER_PASSWORD="T1NQIERNIFNIcnZIcg=="
SERVER_AUTH_TYPE="syncml:auth-md5"
CLIENT_ID="IMEI:352496803361546"
CLIENT_PASSWORD="74V1gEt664mAKin01"
CLIENT_AUTH_TYPE="syncml:auth-md5"

echo "======================================================"
echo "  FOTA Agent OAuth Profile Configuration"
echo "======================================================"
echo ""
echo "Profile Configuration:"
echo "  Profile Name:      $PROFILE_NAME"
echo "  Server Address:    $SERVER_ADDRESS"
echo "  Server ID:         $SERVER_ID"
echo "  Server Password:   $SERVER_PASSWORD"
echo "  Server Auth Type:  $SERVER_AUTH_TYPE"
echo "  Client ID:         $CLIENT_ID"
echo "  Client Password:   $CLIENT_PASSWORD"
echo "  Client Auth Type:  $CLIENT_AUTH_TYPE"
echo ""
echo "======================================================"
echo ""

# Create profile configuration file
CONFIG_FILE="profile_config.properties"

echo "# FOTA Agent OAuth Profile Configuration" > "$CONFIG_FILE"
echo "# Generated on: $(date)" >> "$CONFIG_FILE"
echo "" >> "$CONFIG_FILE"
echo "profile.name=$PROFILE_NAME" >> "$CONFIG_FILE"
echo "server.address=$SERVER_ADDRESS" >> "$CONFIG_FILE"
echo "server.id=$SERVER_ID" >> "$CONFIG_FILE"
echo "server.password=$SERVER_PASSWORD" >> "$CONFIG_FILE"
echo "server.auth.type=$SERVER_AUTH_TYPE" >> "$CONFIG_FILE"
echo "client.id=$CLIENT_ID" >> "$CONFIG_FILE"
echo "client.password=$CLIENT_PASSWORD" >> "$CONFIG_FILE"
echo "client.auth.type=$CLIENT_AUTH_TYPE" >> "$CONFIG_FILE"

echo "✓ Configuration file created: $CONFIG_FILE"
echo ""

# Create ADB commands file for setting up profile on Android device
ADB_COMMANDS_FILE="setup_profile_adb.sh"

cat > "$ADB_COMMANDS_FILE" << 'EOF'
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

EOF

chmod +x "$ADB_COMMANDS_FILE"

echo "✓ ADB setup script created: $ADB_COMMANDS_FILE"
echo ""

# Create a JSON configuration file (for programmatic access)
JSON_CONFIG_FILE="profile_config.json"

cat > "$JSON_CONFIG_FILE" << EOF
{
  "profile": {
    "name": "$PROFILE_NAME",
    "server": {
      "address": "$SERVER_ADDRESS",
      "id": "$SERVER_ID",
      "password": "$SERVER_PASSWORD",
      "authType": "$SERVER_AUTH_TYPE"
    },
    "client": {
      "id": "$CLIENT_ID",
      "password": "$CLIENT_PASSWORD",
      "authType": "$CLIENT_AUTH_TYPE"
    }
  }
}
EOF

echo "✓ JSON configuration file created: $JSON_CONFIG_FILE"
echo ""

# Create README for the configuration
README_FILE="PROFILE_SETUP_README.md"

cat > "$README_FILE" << 'EOF'
# FOTA Agent OAuth Profile Setup

## Overview

This directory contains scripts and configuration files to set up the OAuth profile for the FOTA Agent application to download firmware.

## Files Generated

1. **profile_config.properties** - Java properties format configuration
2. **profile_config.json** - JSON format configuration
3. **setup_profile_adb.sh** - ADB commands for device configuration
4. **PROFILE_SETUP_README.md** - This file

## Profile Configuration Details

- **Profile Name**: fotaagent
- **Server Address**: https://dms.ospserver.net/v1/device/magics
- **Server ID**: x6g1q14r75
- **Server Password**: T1NQIERNIFNIcnZIcg== (Base64 encoded)
- **Server Auth Type**: syncml:auth-md5
- **Client ID**: IMEI:352496803361546
- **Client Password**: 74V1gEt664mAKin01
- **Client Auth Type**: syncml:auth-md5

## Setup Methods

### Method 1: Manual Configuration via App UI (Recommended)

1. Install the FOTA Agent APK on your device
2. Open the application
3. Navigate to **Admin** → **DM Settings** → **Profile Configuration**
4. Click on "Add Profile" or edit existing profile
5. Enter all the values from the profile configuration above
6. Save the profile
7. The profile will be stored in the app's SQLite database

### Method 2: Using ADB (For Developers)

If you have ADB access and the device is debuggable:

```bash
# Make the script executable
chmod +x setup_profile_adb.sh

# Run the setup script
./setup_profile_adb.sh
```

Follow the instructions provided by the script.

### Method 3: Direct Database Access (Requires Root)

If you have root access on the device:

1. Connect device via ADB
2. Get root access: `adb root`
3. Access the SQLite database:
   ```bash
   adb shell
   su
   cd /data/data/com.wssyncmldm/databases
   sqlite3 fotaagent.db
   ```
4. Insert the profile data using SQL (see generated SQL in setup_profile_adb.sh)

### Method 4: Programmatic Integration

Use the configuration files (`profile_config.properties` or `profile_config.json`) to programmatically configure the profile:

- In Java/Kotlin code, read the properties file and use the IDMDatabaseProfile class
- Use the database manager to insert/update the profile
- Example code structure:

```java
IDMDatabaseProfile profile = new IDMDatabaseProfile(
    "x6g1q14r75",                    // serverId
    "T1NQIERNIFNIcnZIcg==",          // serverPwd
    "",                               // serverNonce
    "syncml:auth-md5",               // serverAuthtype
    "https://dms.ospserver.net/v1/device/magics", // serverUrl
    "IMEI:352496803361546",          // clientId
    "74V1gEt664mAKin01",            // clientPwd
    "",                               // clientNonce
    "syncml:auth-md5",               // clientAuthtype
    "fotaagent",                     // name
    1                                 // active (1 = active)
);

// Save to database using IDMDatabaseManager
IDMDatabaseManager.getInstance().saveProfile(profile);
```

## Testing the Configuration

After setting up the profile:

1. Open the FOTA Agent app
2. Go to **Admin** → **DM Settings**
3. Verify that the "fotaagent" profile is listed and active
4. Try to initiate a firmware download
5. Check that the app connects to `https://dms.ospserver.net/v1/device/magics`
6. Verify authentication with the configured credentials

## Troubleshooting

### Profile Not Saving
- Ensure the app has proper permissions
- Check if the database file exists and is writable
- Verify all required fields are filled

### Connection Issues
- Verify the server address is reachable: `curl https://dms.ospserver.net/v1/device/magics`
- Check network connectivity on the device
- Ensure the device has internet access

### Authentication Failures
- Verify the Server ID and Password are correct
- Check that the auth type is set to "syncml:auth-md5"
- Ensure the Client ID matches the device IMEI
- Verify the Client Password is correct

## Security Notes

- The server password (`T1NQIERNIFNIcnZIcg==`) appears to be Base64 encoded
- Store these configuration files securely
- Do not commit sensitive credentials to public repositories
- Consider encrypting the configuration files in production

## Additional Resources

- See `AdminProfileActivity.smali` and `AdminProfileViewModel.smali` for implementation details
- Review `IDMDatabaseProfile.smali` for the profile data structure
- Check `IDMDatabaseManager.smali` for database operations

EOF

echo "✓ README file created: $README_FILE"
echo ""

echo "======================================================"
echo "  Setup Complete!"
echo "======================================================"
echo ""
echo "Generated Files:"
echo "  1. $CONFIG_FILE"
echo "  2. $JSON_CONFIG_FILE"
echo "  3. $ADB_COMMANDS_FILE"
echo "  4. $README_FILE"
echo ""
echo "Next Steps:"
echo "  1. Review the generated files"
echo "  2. Choose a setup method from $README_FILE"
echo "  3. Configure the profile on your device"
echo "  4. Test the firmware download functionality"
echo ""
echo "For detailed instructions, see: $README_FILE"
echo ""
