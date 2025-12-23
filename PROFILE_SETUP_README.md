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

