.class public Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PREF_NAME:Ljava/lang/String; = "mock_device_prefs"

.field private static final KEY_ENABLED:Ljava/lang/String; = "mock_device_enabled"

.field private static final KEY_MANUFACTURER:Ljava/lang/String; = "mock_device_manufacturer"

.field private static final KEY_MODEL:Ljava/lang/String; = "mock_device_model"

.field private static final KEY_DEVICE_ID:Ljava/lang/String; = "mock_device_id"

.field private static final KEY_IMSI:Ljava/lang/String; = "mock_device_imsi"

.field private static final KEY_LANGUAGE:Ljava/lang/String; = "mock_device_language"

.field private static final KEY_ANDROID_VERSION:Ljava/lang/String; = "mock_device_android_version"

.field private static final KEY_ONEUI_VERSION:Ljava/lang/String; = "mock_device_oneui_version"

.field private static final KEY_BOOTLOADER:Ljava/lang/String; = "mock_device_bootloader"

.field private static final KEY_PDA_VERSION:Ljava/lang/String; = "mock_device_pda_version"

.field private static final KEY_SOFTWARE_VERSION:Ljava/lang/String; = "mock_device_software_version"

.field private static final KEY_CSC_VERSION:Ljava/lang/String; = "mock_device_csc_version"

.field private static final KEY_PHONE_VERSION:Ljava/lang/String; = "mock_device_phone_version"

.field private static final KEY_SECURITY_PATCH:Ljava/lang/String; = "mock_device_security_patch"

.field private static final KEY_BUILD_TYPE:Ljava/lang/String; = "mock_device_build_type"

.field private static final KEY_SERIAL:Ljava/lang/String; = "mock_device_serial"

.field private static final KEY_MCC:Ljava/lang/String; = "mock_device_mcc"

.field private static final KEY_MNC:Ljava/lang/String; = "mock_device_mnc"

.field private static final KEY_SIM_OPERATOR:Ljava/lang/String; = "mock_device_sim_operator"

.field private static final KEY_SIM_OPERATOR_NAME:Ljava/lang/String; = "mock_device_sim_operator_name"

.field private static final KEY_KNOX_STATUS:Ljava/lang/String; = "mock_device_knox_status"

.field private static final KEY_KNOX_VERSION:Ljava/lang/String; = "mock_device_knox_version"

.field private static final KEY_WARRANTY_BIT:Ljava/lang/String; = "mock_device_warranty_bit"

.field private static final KEY_OFFICIAL_STATUS:Ljava/lang/String; = "mock_device_official_status"

.field private static final KEY_ROOT_STATUS:Ljava/lang/String; = "mock_device_root_status"

.field private static final KEY_SELINUX_STATUS:Ljava/lang/String; = "mock_device_selinux_status"

.field private static final KEY_BOOTLOADER_LOCKED:Ljava/lang/String; = "mock_device_bootloader_locked"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    # Null check for context
    if-nez p0, :cond_getprefs_valid

    const/4 p0, 0x0

    return-object p0

    :cond_getprefs_valid
    const-string v0, "mock_device_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    # Null check for SharedPreferences
    if-nez p0, :cond_prefs_valid

    const/4 v0, 0x0

    return v0

    :cond_prefs_valid
    const-string v0, "mock_device_enabled"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getManufacturer(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "mock_device_manufacturer"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getModel(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "mock_device_model"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "mock_device_id"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getImsi(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "mock_device_imsi"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "mock_device_language"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAndroidVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "mock_device_android_version"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOneUiVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "mock_device_oneui_version"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBootloader(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "mock_device_bootloader"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPDAVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "mock_device_pda_version"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSoftwareVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "mock_device_software_version"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCSCVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "mock_device_csc_version"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPhoneVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "mock_device_phone_version"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSecurityPatch(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "mock_device_security_patch"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBuildType(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "mock_device_build_type"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSerial(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "mock_device_serial"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMCC(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "mock_device_mcc"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMNC(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "mock_device_mnc"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSimOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "mock_device_sim_operator"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSimOperatorName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "mock_device_sim_operator_name"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getKnoxStatus(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "mock_device_knox_status"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getKnoxVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "mock_device_knox_version"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWarrantyBit(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "mock_device_warranty_bit"

    const-string v1, "0"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOfficialStatus(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "mock_device_official_status"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getRootStatus(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "mock_device_root_status"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getSelinuxStatus(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "mock_device_selinux_status"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getBootloaderLocked(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "mock_device_bootloader_locked"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
