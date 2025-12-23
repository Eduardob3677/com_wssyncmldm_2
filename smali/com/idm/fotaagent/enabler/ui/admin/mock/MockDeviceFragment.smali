.class public Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDeviceFragment;
.super Landroidx/preference/z;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

# MockDeviceFragment - Preference screen for mock device configuration
# 
# This fragment allows administrators to override device information used by the FOTA agent.
# It provides a UI to customize device properties such as:
# - Manufacturer, model, and serial number
# - Android/OneUI versions and build info
# - Network operator and SIM information
# - Security status (Knox, root, SELinux, bootloader)
# 
# Key features:
# - Initializes preferences with real device values on first launch
# - Synchronizes PDA version and software version fields (they mirror each other)
# - Persists all values in SharedPreferences named "mock_device_prefs"
# - Provides a reset function to restore device defaults


# instance fields
.field private mIsUpdatingPreference:Z


# direct methods
.method static synthetic access$000(Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDeviceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDeviceFragment;->resetToDefaults()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/preference/z;-><init>()V

    # Initialize mIsUpdatingPreference to false
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDeviceFragment;->mIsUpdatingPreference:Z

    return-void
.end method

.method private initializeDefaultValues()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    # Get SharedPreferences
    const-string v1, "mock_device_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    # Check if already initialized
    const-string v2, "_initialized"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    # Get editor
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    # Set manufacturer
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string p0, "mock_device_manufacturer"

    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    # Set model
    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->readModelName()Ljava/lang/String;

    move-result-object v3

    const-string p0, "mock_device_model"

    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    # Set Android version
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string p0, "mock_device_android_version"

    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    # Set bootloader
    sget-object v3, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    const-string p0, "mock_device_bootloader"

    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    # Set PDA version
    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->readPDAVersion()Ljava/lang/String;

    move-result-object v3

    const-string p0, "mock_device_pda_version"

    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    # Set firmware version
    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->readFirmwareVersion()Ljava/lang/String;

    move-result-object v3

    const-string p0, "mock_device_software_version"

    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    # Set security patch
    sget-object v3, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    const-string p0, "mock_device_security_patch"

    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    # Set build type
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string p0, "mock_device_build_type"

    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    # Set serial number
    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    const-string p0, "mock_device_serial"

    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    # Set SIM operator
    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getSimOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :skip_sim_operator

    const-string p0, "mock_device_sim_operator"

    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :skip_sim_operator

    # Set SIM operator name
    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getSimOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :skip_sim_operator_name

    const-string p0, "mock_device_sim_operator_name"

    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :skip_sim_operator_name

    # Set device ID from RegisteredDeviceRepository
    new-instance v3, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;

    invoke-direct {v3, v0}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;->getDeviceId()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :skip_device_id

    const-string p0, "mock_device_id"

    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :skip_device_id

    # Set IMSI from TelephonyManager
    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    if-eqz v3, :skip_imsi

    :try_start_imsi
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :skip_imsi

    const-string p0, "mock_device_imsi"

    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_imsi
    .catch Ljava/lang/SecurityException; {:try_start_imsi .. :try_end_imsi} :catch_imsi

    goto :skip_imsi

    :catch_imsi
    move-exception v3

    invoke-static {v3}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :skip_imsi

    # Set language from Locale
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string p0, "mock_device_language"

    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    # Note: Android version already set earlier (line 89-94), no need to set again

    # Set OneUI version
    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Latest;->getOneUiVersion()Ljava/lang/String;

    move-result-object v3

    const-string p0, "mock_device_oneui_version"

    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    # Set MCC from FotaTelephonyManager
    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->readSimMCC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :skip_mcc

    const-string p0, "mock_device_mcc"

    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :skip_mcc

    # Set MNC from FotaTelephonyManager
    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->readSimMNC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :skip_mnc

    const-string p0, "mock_device_mnc"

    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :skip_mnc

    # Set CSC version from SemSystemProperties
    const-string v3, "ril.official_cscver"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :skip_csc

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :csc_not_empty

    goto :skip_csc

    :csc_not_empty

    const-string p0, "mock_device_csc_version"

    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :skip_csc

    # Set phone version from SemSystemProperties
    const-string v3, "ril.sw_ver"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :skip_phone

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :phone_not_empty

    goto :skip_phone

    :phone_not_empty

    const-string p0, "mock_device_phone_version"

    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :skip_phone

    # Set Knox status (default true)
    const-string p0, "mock_device_knox_status"

    const/4 v3, 0x1

    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    # Set Knox version (default 3.10)
    const-string p0, "mock_device_knox_version"

    const-string v3, "3.10"

    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    # Set warranty bit (default 0 = official)
    const-string p0, "mock_device_warranty_bit"

    const-string v3, "0"

    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    # Set official status (default true)
    const-string p0, "mock_device_official_status"

    const/4 v3, 0x1

    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    # Set root status (default false)
    const-string p0, "mock_device_root_status"

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    # Set SELinux status (default true)
    const-string p0, "mock_device_selinux_status"

    const/4 v3, 0x1

    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    # Set bootloader locked status from actual device
    const-string p0, "mock_device_bootloader_locked"

    # Read actual bootloader locked status from system property
    const-string v3, "ro.boot.flash.locked"

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    # Convert to boolean: 1 = locked (true), 0 = unlocked (false), -1 = unknown (default true)
    const/4 v4, 0x1

    if-ne v3, v4, :check_unlocked

    const/4 v3, 0x1

    goto :set_bootloader_locked

    :check_unlocked
    if-nez v3, :default_locked

    const/4 v3, 0x0

    goto :set_bootloader_locked

    :default_locked
    const/4 v3, 0x1

    :set_bootloader_locked
    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    # Mark as initialized
    const/4 v0, 0x1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    # Apply changes
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private resetToDefaults()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    # Get SharedPreferences
    const-string v1, "mock_device_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    # Clear all preferences including _initialized flag
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    # Re-initialize with current device values
    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDeviceFragment;->initializeDefaultValues()V

    # Reload preferences to show updated values
    invoke-virtual {p0}, Landroidx/preference/z;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    const v0, 0x7f160004

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/preference/z;->setPreferencesFromResource(ILjava/lang/String;)V

    # Note: Preference summaries will be displayed automatically from XML or when preferences change
    # No need to manually sync summaries as they're bound to SharedPreferences values

    :cond_1

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    # Validate that preference key is not null
    if-nez p2, :check_flag

    return-void

    :check_flag
    # Check if we're already updating a preference to prevent infinite loop
    iget-boolean v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDeviceFragment;->mIsUpdatingPreference:Z

    if-eqz v0, :check_pda_version

    return-void

    :check_pda_version
    # Check if the changed preference is mock_device_pda_version
    const-string v0, "mock_device_pda_version"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :check_software_version

    # PDA version changed, sync to software version
    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :method_end

    # Set flag to prevent circular updates
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDeviceFragment;->mIsUpdatingPreference:Z

    # Update software version preference value
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "mock_device_software_version"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    # Update the software version preference UI summary
    :try_start_update_summary_1
    invoke-virtual {p0, v0}, Landroidx/preference/z;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/EditTextPreference;

    if-eqz p1, :reset_flag_1

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_update_summary_1
    .catch Ljava/lang/Exception; {:try_start_update_summary_1 .. :try_end_update_summary_1} :catch_summary_1

    goto :reset_flag_1

    :catch_summary_1
    move-exception p1

    # Log error but don't crash - summary update is not critical
    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :reset_flag_1
    # Reset flag
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDeviceFragment;->mIsUpdatingPreference:Z

    goto :method_end

    :check_software_version
    # Check if the changed preference is mock_device_software_version
    const-string v0, "mock_device_software_version"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :method_end

    # Software version changed, sync to PDA version
    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :method_end

    # Set flag to prevent circular updates
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDeviceFragment;->mIsUpdatingPreference:Z

    # Update PDA version preference value
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "mock_device_pda_version"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    # Update the PDA version preference UI summary
    :try_start_update_summary_2
    invoke-virtual {p0, v0}, Landroidx/preference/z;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/EditTextPreference;

    if-eqz p1, :reset_flag_2

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_update_summary_2
    .catch Ljava/lang/Exception; {:try_start_update_summary_2 .. :try_end_update_summary_2} :catch_summary_2

    goto :reset_flag_2

    :catch_summary_2
    move-exception p1

    # Log error but don't crash - summary update is not critical
    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :reset_flag_2
    # Reset flag
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDeviceFragment;->mIsUpdatingPreference:Z

    :method_end
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/z;->onCreate(Landroid/os/Bundle;)V

    # Initialize with real device values on first launch
    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDeviceFragment;->initializeDefaultValues()V

    # Disabled options menu due to Resources$NotFoundException
    # const/4 v0, 0x1

    # invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    const-string p1, "MockDeviceFragment.onCreatePreferences"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    # Note: SharedPreferences name cannot be set via PreferenceManager in this obfuscated build
    # All SharedPreferences access is done directly via Context.getSharedPreferences("mock_device_prefs", 0)
    # in initializeDefaultValues(), resetToDefaults(), onResume(), onPause(), and onSharedPreferenceChanged()

    const p1, 0x7f160004

    invoke-virtual {p0, p1, p2}, Landroidx/preference/z;->setPreferencesFromResource(ILjava/lang/String;)V

    # Note: Preference summaries are bound to SharedPreferences and will update automatically
    # when preferences change via onSharedPreferenceChanged listener

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    # Commented out to fix Resources$NotFoundException
    # const v0, 0x7f0f0001

    # invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a02c8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    # Show confirmation dialog
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroidx/appcompat/app/b$a;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    # Set dialog title (mock_device_reset_dialog_title)
    const v0, 0x7f1301fb

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/b$a;->setTitle(I)Landroidx/appcompat/app/b$a;

    # Set dialog message (mock_device_reset_dialog_message)
    const v0, 0x7f1301fc

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/b$a;->setMessage(I)Landroidx/appcompat/app/b$a;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDeviceFragment$1;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDeviceFragment$1;-><init>(Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDeviceFragment;)V

    # Positive button (android.R.string.ok)
    const v3, 0x104000a

    invoke-virtual {v1, v3, v0}, Landroidx/appcompat/app/b$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    # Negative button (android.R.string.cancel)
    const/high16 v0, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroidx/appcompat/app/b$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    invoke-virtual {v1}, Landroidx/appcompat/app/b$a;->show()Landroidx/appcompat/app/b;

    goto :cond_1

    :cond_0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :cond_1

    return v2
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/preference/z;->onResume()V

    # Get shared preferences and register listener
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "mock_device_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Landroidx/preference/z;->onPause()V

    # Get shared preferences and unregister listener
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "mock_device_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    return-void
.end method
