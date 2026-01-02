# GitHub Actions Workflows

## Upload Device Tree Artifacts Workflow

**File:** `upload-device-tree-artifacts.yml`

### Purpose

This workflow searches for Android device tree files and uploads them as GitHub Actions artifacts. It also generates a comprehensive report of which files exist and which are missing.

### Trigger Events

The workflow runs on:
- Push to `main`, `master`, or any `copilot/**` branch
- Pull requests to `main` or `master`
- Manual workflow dispatch

### What It Does

1. **Checks out the repository**
2. **Scans for device tree files:**
   - Build files: `Android.bp`, `Android.mk`, `AndroidProducts.mk`, `BoardConfig.mk`, `device.mk`
   - Config files: `recovery.fstab`, `system.prop`, `vendor.prop`, `vendorsetup.sh`, `twrp.dependencies`, `twrp_pa1q.mk`
   - Directories: `prebuilt/`, `recovery/`
3. **Uploads artifacts** (if files exist):
   - `android-build-files` - Build configuration files
   - `configuration-files` - System configuration files
   - `prebuilt-files` - Prebuilt binaries and images
   - `recovery-files` - Recovery-related files
   - `kernel-modules` - Kernel modules (.ko files)
4. **Generates a report:**
   - `missing-files-report` - Detailed status of all requested files

### Artifacts

If device tree files are found, they will be uploaded as separate artifacts that can be downloaded from the workflow run page.

### Current Status

⚠️ **Note:** This repository is an Android APK, not a device tree. All device tree files are currently missing. See `MISSING_FILES.md` or `ARCHIVOS_FALTANTES.md` for a complete list.

### Viewing Workflow Results

1. Go to the **Actions** tab in the GitHub repository
2. Click on a workflow run
3. Scroll to the **Artifacts** section at the bottom
4. Download the `missing-files-report` to see which files were found

### Customization

To add more files to scan and upload, edit the workflow file and add them to the appropriate sections in:
- The file checking loop
- The artifact upload steps
