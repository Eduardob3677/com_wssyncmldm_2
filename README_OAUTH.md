# FOTA Agent - OAuth Profile Configuration

## Overview

This repository contains scripts and configuration files for setting up OAuth authentication for the FOTA (Firmware Over The Air) Agent application to download firmware from the OSP (OMA Synchronization Protocol) server.

## What's Included

### Configuration Scripts
- **setup_oauth_profile.sh** - Main setup script that generates all configuration files
- **setup_profile_adb.sh** - ADB helper script for device configuration  
- **validate_config.sh** - Validation script to check configuration and connectivity

### Configuration Files
- **profile_config.properties** - OAuth configuration in Java properties format
- **profile_config.json** - OAuth configuration in JSON format

### Documentation
- **QUICK_START.md** - Quick setup guide (< 5 minutes)
- **PROFILE_SETUP_README.md** - Comprehensive documentation with all methods
- **README_OAUTH.md** - This file

## OAuth Profile Details

The configuration sets up the "fotaagent" profile with these credentials:

| Parameter | Value |
|-----------|-------|
| Profile Name | fotaagent |
| Server Address | https://dms.ospserver.net/v1/device/magics |
| Server ID | x6g1q14r75 |
| Server Password | T1NQIERNIFNIcnZIcg== (Base64) |
| Server Auth Type | syncml:auth-md5 |
| Client ID | IMEI:352496803361546 |
| Client Password | 74V1gEt664mAKin01 |
| Client Auth Type | syncml:auth-md5 |

## Quick Start

### 1. Generate Configuration Files

```bash
chmod +x setup_oauth_profile.sh
./setup_oauth_profile.sh
```

This generates all configuration files and helper scripts.

### 2. Validate Configuration

```bash
chmod +x validate_config.sh
./validate_config.sh
```

This checks:
- ✓ Configuration files exist and are valid
- ✓ Required values are correctly set
- ✓ Server connectivity (if curl is available)
- ✓ ADB and device detection

### 3. Configure on Device

Choose the method that works best for you:

#### Option A: Manual Configuration (Recommended)

1. Install the FOTA Agent APK on your device
2. Open the app and navigate to: **Admin → DM Settings → Configure DM Account Profile**
3. Enter all the OAuth values from the table above
4. Click **Save**

#### Option B: ADB Setup (For Developers)

```bash
# Connect your device via USB with debugging enabled
adb devices

# Run the ADB setup script
chmod +x setup_profile_adb.sh
./setup_profile_adb.sh
```

Follow the on-screen instructions.

## File Structure

```
.
├── setup_oauth_profile.sh      # Main setup script - run this first
├── validate_config.sh          # Configuration validator
├── profile_config.properties   # OAuth config (properties format)
├── profile_config.json         # OAuth config (JSON format)
├── setup_profile_adb.sh        # ADB setup helper
├── QUICK_START.md             # Quick setup guide
├── PROFILE_SETUP_README.md    # Detailed documentation
└── README_OAUTH.md            # This file
```

## Setup Methods

### Method 1: Manual Configuration via App UI
**Best for**: End users, quick setup
**Requirements**: FOTA Agent app installed
**Time**: ~2 minutes

See QUICK_START.md for step-by-step instructions.

### Method 2: ADB Configuration
**Best for**: Developers, automated deployment
**Requirements**: ADB installed, USB debugging enabled
**Time**: ~3 minutes

Run: `./setup_profile_adb.sh`

### Method 3: Direct Database Access
**Best for**: Advanced users, troubleshooting
**Requirements**: Root access on device
**Time**: ~5 minutes

See PROFILE_SETUP_README.md for SQL commands.

### Method 4: Programmatic Integration
**Best for**: Custom applications, automated workflows
**Requirements**: Development environment
**Time**: Varies

See PROFILE_SETUP_README.md for code examples.

## Validation & Testing

### Validate Configuration
```bash
./validate_config.sh
```

Expected output:
```
✓ Configuration files exist and are valid
✓ OAuth values correctly configured
✓ Server is reachable
✓ ADB detected (if applicable)
```

### Test Firmware Download

1. Open FOTA Agent app
2. Navigate to **Admin → Download and Install**
3. Initiate a firmware check
4. Verify connection to `https://dms.ospserver.net/v1/device/magics`
5. Check authentication with configured credentials

## Troubleshooting

### Configuration Issues

**Problem**: Configuration files not generated  
**Solution**: Run `./setup_oauth_profile.sh` again

**Problem**: Values not matching  
**Solution**: Check `profile_config.properties` for correct values

### Connection Issues

**Problem**: Cannot reach server  
**Solution**: Test with `curl https://dms.ospserver.net/v1/device/magics`

**Problem**: Timeout errors  
**Solution**: Check firewall/network settings

### Authentication Issues

**Problem**: Login failed  
**Solution**: Verify Server ID and Password in configuration

**Problem**: Client authentication failed  
**Solution**: Ensure Client ID matches device IMEI

### ADB Issues

**Problem**: Device not detected  
**Solution**: 
- Enable USB debugging
- Install ADB drivers
- Run `adb devices` to verify

**Problem**: Permission denied  
**Solution**: Enable developer options and USB debugging

## Security Notes

⚠️ **Important Security Considerations**

1. **Credential Storage**: The configuration files contain sensitive credentials
   - Store them securely
   - Don't commit to public repositories
   - Use appropriate file permissions

2. **Server Password**: The password `T1NQIERNIFNIcnZIcg==` is Base64 encoded
   - This provides encoding, not encryption
   - Consider additional security measures for production

3. **Client ID**: Uses IMEI `352496803361546`
   - Ensure this matches your device
   - Don't share IMEI publicly

4. **Local Configuration**: For custom values, use:
   - `profile_config_local.properties` (gitignored)
   - `profile_config_local.json` (gitignored)

## Architecture

### Profile Data Structure

The profile is stored in an SQLite database using the `IDMDatabaseProfile` class:

```
IDMDatabaseProfile
├── name (String)              # "fotaagent"
├── serverId (String)          # "x6g1q14r75"
├── serverPwd (String)         # "T1NQIERNIFNIcnZIcg=="
├── serverNonce (String)       # (empty for initial setup)
├── serverAuthtype (String)    # "syncml:auth-md5"
├── serverUrl (String)         # "https://dms.ospserver.net/v1/device/magics"
├── clientId (String)          # "IMEI:352496803361546"
├── clientPwd (String)         # "74V1gEt664mAKin01"
├── clientNonce (String)       # (empty for initial setup)
├── clientAuthtype (String)    # "syncml:auth-md5"
└── active (int)               # 1 = active, 0 = inactive
```

### Key Components

- **AdminProfileActivity**: UI for profile configuration
- **AdminProfileViewModel**: Business logic for profile management
- **IDMDatabaseManager**: Database operations
- **IDMMoDatabaseManager**: SyncML management operations

## Additional Resources

### Documentation
- [SyncML Protocol Specification](http://www.openmobilealliance.org/)
- [OMA Device Management](http://www.openmobilealliance.org/release/DM/)
- [Android ADB Documentation](https://developer.android.com/studio/command-line/adb)

### Code References
- Profile Data: `smali/com/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile.smali`
- UI: `smali/com/idm/fotaagent/enabler/ui/admin/profile/AdminProfileActivity.smali`
- ViewModel: `smali/com/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel.smali`
- Database: `smali/com/idm/fotaagent/database/sqlite/database/IDMDatabaseManager.smali`

## Support & Contribution

### Getting Help

1. **Check Documentation**
   - Start with QUICK_START.md
   - Review PROFILE_SETUP_README.md for detailed info
   - Run `./validate_config.sh` to diagnose issues

2. **Common Issues**
   - See Troubleshooting section above
   - Check existing GitHub issues

3. **Still Need Help?**
   - Open a GitHub issue with:
     - Error messages
     - Steps to reproduce
     - Configuration (without sensitive data)
     - Validation script output

### Contributing

Contributions welcome! Please:
1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## License

This configuration is for the FOTA Agent application. See the main repository for license information.

## Changelog

### v1.0.0 (2025-12-23)
- Initial OAuth profile configuration
- Setup scripts created
- Documentation added
- Validation script implemented

---

**Quick Links**:
- [Quick Start Guide](QUICK_START.md)
- [Detailed Documentation](PROFILE_SETUP_README.md)
- [Configuration Properties](profile_config.properties)
- [Configuration JSON](profile_config.json)

For questions or issues, please open a GitHub issue.
