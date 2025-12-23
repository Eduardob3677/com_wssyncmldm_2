.class public Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDeviceFragment;
.super Landroidx/preference/z;
.source "SourceFile"


# direct methods
.method static synthetic access$000(Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDeviceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDeviceFragment;->resetToDefaults()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/preference/z;-><init>()V

    return-void
.end method

.method private initializeDefaultValues()V
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

    # Set Android version
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string p0, "mock_device_android_version"

    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

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

    # Set bootloader locked status (default true)
    const-string p0, "mock_device_bootloader_locked"

    const/4 v3, 0x1

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

    # Sync the values with the preference UI elements
    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDeviceFragment;->syncPreferencesWithValues()V

    :cond_1

    return-void
.end method

.method private syncPreferencesWithValues()V
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

    move-result-object v0

    # Sync EditTextPreference values with SharedPreferences using z method
    # PDA Version
    const-string v1, "mock_device_pda_version"

    invoke-virtual {p0, v1}, Landroidx/preference/z;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/EditTextPreference;

    if-eqz v2, :skip_pda

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :skip_pda

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->z(Ljava/lang/CharSequence;)V

    :skip_pda

    # Manufacturer
    const-string v1, "mock_device_manufacturer"

    invoke-virtual {p0, v1}, Landroidx/preference/z;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/EditTextPreference;

    if-eqz v2, :skip_manufacturer

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :skip_manufacturer

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->z(Ljava/lang/CharSequence;)V

    :skip_manufacturer

    # Model
    const-string v1, "mock_device_model"

    invoke-virtual {p0, v1}, Landroidx/preference/z;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/EditTextPreference;

    if-eqz v2, :skip_model

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :skip_model

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->z(Ljava/lang/CharSequence;)V

    :skip_model

    # Software Version
    const-string v1, "mock_device_software_version"

    invoke-virtual {p0, v1}, Landroidx/preference/z;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/EditTextPreference;

    if-eqz v2, :skip_software_version

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :skip_software_version

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->z(Ljava/lang/CharSequence;)V

    :skip_software_version

    # Device ID
    const-string v1, "mock_device_id"

    invoke-virtual {p0, v1}, Landroidx/preference/z;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/EditTextPreference;

    if-eqz v2, :skip_device_id

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :skip_device_id

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->z(Ljava/lang/CharSequence;)V

    :skip_device_id

    # Serial
    const-string v1, "mock_device_serial"

    invoke-virtual {p0, v1}, Landroidx/preference/z;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/EditTextPreference;

    if-eqz v2, :skip_serial

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :skip_serial

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->z(Ljava/lang/CharSequence;)V

    :skip_serial

    # Bootloader
    const-string v1, "mock_device_bootloader"

    invoke-virtual {p0, v1}, Landroidx/preference/z;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/EditTextPreference;

    if-eqz v2, :skip_bootloader

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :skip_bootloader

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->z(Ljava/lang/CharSequence;)V

    :skip_bootloader

    # CSC Version
    const-string v1, "mock_device_csc_version"

    invoke-virtual {p0, v1}, Landroidx/preference/z;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/EditTextPreference;

    if-eqz v2, :skip_csc

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :skip_csc

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->z(Ljava/lang/CharSequence;)V

    :skip_csc

    # Phone Version
    const-string v1, "mock_device_phone_version"

    invoke-virtual {p0, v1}, Landroidx/preference/z;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/EditTextPreference;

    if-eqz v2, :skip_phone

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :skip_phone

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->z(Ljava/lang/CharSequence;)V

    :skip_phone

    # Security Patch
    const-string v1, "mock_device_security_patch"

    invoke-virtual {p0, v1}, Landroidx/preference/z;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/EditTextPreference;

    if-eqz v2, :skip_security

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :skip_security

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->z(Ljava/lang/CharSequence;)V

    :skip_security

    # Build Type
    const-string v1, "mock_device_build_type"

    invoke-virtual {p0, v1}, Landroidx/preference/z;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/EditTextPreference;

    if-eqz v2, :skip_build_type

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :skip_build_type

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->z(Ljava/lang/CharSequence;)V

    :skip_build_type

    # IMSI
    const-string v1, "mock_device_imsi"

    invoke-virtual {p0, v1}, Landroidx/preference/z;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/EditTextPreference;

    if-eqz v2, :skip_imsi

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :skip_imsi

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->z(Ljava/lang/CharSequence;)V

    :skip_imsi

    # MCC
    const-string v1, "mock_device_mcc"

    invoke-virtual {p0, v1}, Landroidx/preference/z;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/EditTextPreference;

    if-eqz v2, :skip_mcc

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :skip_mcc

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->z(Ljava/lang/CharSequence;)V

    :skip_mcc

    # MNC
    const-string v1, "mock_device_mnc"

    invoke-virtual {p0, v1}, Landroidx/preference/z;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/EditTextPreference;

    if-eqz v2, :skip_mnc

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :skip_mnc

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->z(Ljava/lang/CharSequence;)V

    :skip_mnc

    # SIM Operator
    const-string v1, "mock_device_sim_operator"

    invoke-virtual {p0, v1}, Landroidx/preference/z;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/EditTextPreference;

    if-eqz v2, :skip_sim_operator

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :skip_sim_operator

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->z(Ljava/lang/CharSequence;)V

    :skip_sim_operator

    # Language
    const-string v1, "mock_device_language"

    invoke-virtual {p0, v1}, Landroidx/preference/z;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/EditTextPreference;

    if-eqz v2, :skip_language

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :skip_language

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->z(Ljava/lang/CharSequence;)V

    :skip_language

    # Knox Version
    const-string v1, "mock_device_knox_version"

    invoke-virtual {p0, v1}, Landroidx/preference/z;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/EditTextPreference;

    if-eqz v2, :skip_knox_version

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :skip_knox_version

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->z(Ljava/lang/CharSequence;)V

    :skip_knox_version

    # Warranty Bit
    const-string v1, "mock_device_warranty_bit"

    invoke-virtual {p0, v1}, Landroidx/preference/z;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/EditTextPreference;

    if-eqz v2, :skip_warranty

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :skip_warranty

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->z(Ljava/lang/CharSequence;)V

    :skip_warranty

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/z;->onCreate(Landroid/os/Bundle;)V

    # Initialize with real device values on first launch
    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDeviceFragment;->initializeDefaultValues()V

    # Enable options menu
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const-string p1, "MockDeviceFragment.onCreatePreferences"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const p1, 0x7f160004

    invoke-virtual {p0, p1, p2}, Landroidx/preference/z;->setPreferencesFromResource(ILjava/lang/String;)V

    # Sync SharedPreferences values with Preference objects to show default values
    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDeviceFragment;->syncPreferencesWithValues()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0f0001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

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
