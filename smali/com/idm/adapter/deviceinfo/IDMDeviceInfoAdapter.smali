.class public abstract Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private nExtendDevInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final szDefaultSimValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "000000000000000"

    iput-object v0, p0, Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;->szDefaultSimValue:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;->nExtendDevInfo:Ljava/util/ArrayList;

    return-void
.end method

.method private idmGetDeviceIMSIFromSIM(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    # Check if mock device is enabled
    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->isEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_real

    # Return mock IMSI if enabled
    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_real

    return-object p0

    :cond_real
    # Original code for real IMSI
    const-string p0, "000000000000000"

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Default"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0
.end method


# virtual methods
.method public idmGetClientName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;->idmGetDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public idmGetDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    # Check if mock device is enabled
    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_real

    # Return mock device ID if enabled
    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_real

    return-object v0

    :cond_real
    # Original code for real device ID
    const-string p0, "phone"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "IMEI:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "MEID:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public idmGetDeviceLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    # Check if mock device is enabled
    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->isEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_real

    # Return mock language if enabled
    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_real

    return-object p0

    :cond_real
    # Original code for real device language
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public idmGetDeviceManufacturer()Ljava/lang/String;
    .locals 2

    # Check if mock is enabled and return mock value
    sget-object v0, Lcom/idm/fotaagent/IDMApplication;->context:Landroid/content/Context;

    if-eqz v0, :cond_real

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_real

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getManufacturer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_real

    return-object v0

    :cond_real
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object p0
.end method

.method public idmGetExtendDevInfo()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;->nExtendDevInfo:Ljava/util/ArrayList;

    return-object p0
.end method

.method public idmGetNetPinFromIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-direct {p0, p1}, Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;->idmGetDeviceIMSIFromSIM(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "000000000000000"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    const-string v0, "9"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x2

    const-string v0, "1"

    const-string v1, "F"

    invoke-static {v0, p0, v1}, LB/f;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    div-int/lit8 p1, p1, 0x2

    new-array v0, p1, [C

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_2

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v3}, Lcom/idm/adapter/common/IDMCommonUtils;->idmCharToHex(C)C

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    int-to-char v3, v3

    invoke-static {v2}, Lcom/idm/adapter/common/IDMCommonUtils;->idmCharToHex(C)C

    move-result v2

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract idmIsAvailableFOTAWithRoamingNetwork(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public idmMakeClientPassword(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/idm/core/security/IDMSecurityImpl;

    invoke-direct {v0}, Lcom/idm/core/security/IDMSecurityImpl;-><init>()V

    invoke-virtual {p0, p1}, Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;->idmGetDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Lcom/idm/core/security/IDMSecurityImpl;->idmSecurityMakeSECDevicePassword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public idmMakeFactoryNonce()Ljava/lang/String;
    .locals 0

    new-instance p0, Lcom/idm/core/security/IDMSecurityImpl;

    invoke-direct {p0}, Lcom/idm/core/security/IDMSecurityImpl;-><init>()V

    invoke-virtual {p0}, Lcom/idm/core/security/IDMSecurityImpl;->idmSecurityMakeSECFactoryNonce()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public idmMakeServerPassword(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method
