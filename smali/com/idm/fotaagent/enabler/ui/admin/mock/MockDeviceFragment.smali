.class public Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDeviceFragment;
.super Landroidx/preference/z;
.source "SourceFile"


# direct methods
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

    const-string p0, "mock_device_sim_operator"

    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    # Set device ID from RegisteredDeviceRepository
    :try_start_device_id
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
    :try_end_device_id
    :catch_device_id
    :skip_device_id

    # Set IMSI from TelephonyManager
    :try_start_imsi
    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    if-eqz v3, :skip_imsi

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :skip_imsi

    const-string p0, "mock_device_imsi"

    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_imsi
    :catch_imsi
    :skip_imsi

    # Set language from Locale
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string p0, "mock_device_language"

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

    const-string p0, "mock_device_csc_version"

    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :skip_csc

    # Set phone version from SemSystemProperties
    const-string v3, "ril.sw_ver"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :skip_phone

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


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/z;->onCreate(Landroid/os/Bundle;)V

    # Initialize with real device values on first launch
    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDeviceFragment;->initializeDefaultValues()V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const-string p1, "MockDeviceFragment.onCreatePreferences"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const p1, 0x7f160004

    invoke-virtual {p0, p1, p2}, Landroidx/preference/z;->setPreferencesFromResource(ILjava/lang/String;)V

    return-void
.end method
