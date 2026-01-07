# FOTA Agent OAuth Configuration - Quick Start Guide

## Overview

This guide helps you quickly set up the OAuth profile configuration for the FOTA Agent to download firmware from the OSP server.

## Quick Setup (< 5 minutes)

### Step 1: Generate Configuration Files

```bash
# Run the setup script
chmod +x setup_oauth_profile.sh
./setup_oauth_profile.sh
```

This creates:
- `profile_config.properties` - Configuration in properties format
- `profile_config.json` - Configuration in JSON format  
- `setup_profile_adb.sh` - ADB helper script
- `PROFILE_SETUP_README.md` - Detailed documentation

### Step 2: Configure on Device

Choose one of these methods:

#### Option A: Manual Configuration (Easiest)

1. Install and open the FOTA Agent app
2. Go to: **Admin** → **DM Settings** → **Configure DM Account Profile**
3. Enter these values:

   ```
   Profile Name:      fotaagent
   Server Address:    https://dms.ospserver.net/v1/device/magics
   Server ID:         x6g1q14r75
   Server Password:   T1NQIERNIFNIcnZIcg==
   Server Auth Type:  syncml:auth-md5
   Client ID:         IMEI:352496803361546
   Client Password:   74V1gEt664mAKin01
   Client Auth Type:  syncml:auth-md5
   ```

4. Click **Save**

#### Option B: Using ADB (For Developers)

```bash
# Connect your device via USB
adb devices

# Run the ADB setup script
chmod +x setup_profile_adb.sh
./setup_profile_adb.sh
```

Follow the on-screen instructions.

### Step 3: Verify Configuration

1. Open the FOTA Agent app
2. Go to **Admin** → **DM Settings**
3. Verify "fotaagent" profile appears and is active
4. Test firmware download by initiating an update check

## Configuration Details

| Field | Value |
|-------|-------|
| Profile Name | fotaagent |
| Server Address | https://dms.ospserver.net/v1/device/magics |
| Server ID | x6g1q14r75 |
| Server Password | T1NQIERNIFNIcnZIcg== |
| Server Auth Type | syncml:auth-md5 |
| Client ID | IMEI:352496803361546 |
| Client Password | 74V1gEt664mAKin01 |
| Client Auth Type | syncml:auth-md5 |

## Troubleshooting

### "Device not detected" (ADB)
- Enable USB debugging on your Android device
- Install ADB drivers for your device
- Run `adb devices` to verify connection

### "Profile not saving"
- Check app permissions
- Ensure you have storage access
- Try clearing app data and reconfiguring

### "Connection failed"
- Verify internet connectivity
- Test server access: `curl https://dms.ospserver.net/v1/device/magics`
- Check firewall settings

### "Authentication failed"
- Double-check Server ID and Password
- Verify Client ID matches device IMEI
- Confirm Auth Type is "syncml:auth-md5"

## Next Steps

- See `PROFILE_SETUP_README.md` for detailed setup methods
- Review `profile_config.properties` for configuration reference
- Check `setup_profile_adb.sh` for ADB commands

## Files Overview

```
.
├── setup_oauth_profile.sh      # Main setup script (run this first)
├── profile_config.properties   # Config in properties format
├── profile_config.json         # Config in JSON format
├── setup_profile_adb.sh        # ADB setup helper script
├── PROFILE_SETUP_README.md     # Detailed documentation
└── QUICK_START.md             # This quick start guide
```

## Support

For detailed information, see:
- **Full Documentation**: `PROFILE_SETUP_README.md`
- **Profile Structure**: See `smali/com/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile.smali`
- **UI Implementation**: See `smali/com/idm/fotaagent/enabler/ui/admin/profile/AdminProfileActivity.smali`

---

**Need help?** Check the detailed troubleshooting section in `PROFILE_SETUP_README.md`
