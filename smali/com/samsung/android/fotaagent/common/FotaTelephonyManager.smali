.class public Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MCC:Ljava/lang/String; = "901"

.field private static final DEFAULT_MNC:Ljava/lang/String; = "00"

.field private static final EXCEPTION_MCC_LIST:Ljava/lang/String; = "001,002,999,@65,000"

.field private static final EXCEPTION_MNC_LIST:Ljava/lang/String; = "@5"

.field private static final SIMSLOT_COUNT:Ljava/lang/String; = "ro.multisim.simslotcount"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/telephony/SubscriptionInfo;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->lambda$getDataSimSlotId$1(Landroid/telephony/SubscriptionInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->lambda$getDataSimSlotId$2()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Landroid/telephony/SubscriptionManager;)Landroid/telephony/SubscriptionInfo;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->lambda$getDataSimSlotId$0(Landroid/telephony/SubscriptionManager;)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentDataRoamingType(Landroid/content/Context;)I
    .locals 1

    # Note: getCurrentDataRoamingType cannot be mocked easily as it returns a dynamic state
    # (int value) from ServiceState that depends on the current network connection.
    # Mocking this would require complex state management that goes beyond simple preference injection.

    invoke-static {}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getDataSubId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "tm should not be null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "serviceState should not be null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->semGetCurrentDataRoamingType()I

    move-result p0

    return p0
.end method

.method public static getCurrentPhoneType(Landroid/content/Context;)I
    .locals 1

    # Note: getCurrentPhoneType cannot be mocked easily as it returns a dynamic state
    # (int value) representing the phone radio type (GSM, CDMA, SIP, etc.).
    # This is determined by hardware and network configuration, not suitable for simple mock injection.

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static getDataNetworkType(Landroid/content/Context;)I
    .locals 1

    # Note: getDataNetworkType cannot be mocked easily as it returns a dynamic state
    # (int value) representing the current data network type (LTE, 5G, etc.).
    # This depends on actual network connectivity and changes based on location and carrier.

    invoke-static {}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getDataSubId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getDataSimSlotId(Landroid/content/Context;)I
    .locals 2

    invoke-static {}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->isDualSim()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "device is not dual sim, so return 0"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/installconfirm/d;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/d;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/installconfirm/d;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/d;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LC2/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LC2/b;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getDataSubId()I
    .locals 2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    # Check if mock is enabled and return mock value
    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_real

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_real

    return-object v0

    :cond_real
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_1

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/a;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getMEID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    # Note: getMEID cannot be mocked easily as it's a CDMA-specific hardware identifier
    # that is not commonly used. Unlike IMEI, there's no practical use case for mocking MEID
    # in most test scenarios.

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static getNetworkOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    # Check if mock is enabled and return mock value
    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_real

    # Build network operator from mock MCC+MNC
    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getMCC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getMNC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_real

    if-eqz v2, :cond_real

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_real
    invoke-static {}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getDataSubId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getSimOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    # Check if mock device is enabled
    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_real

    # Return mock SIM operator if enabled
    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getSimOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_real

    return-object v0

    :cond_real
    # Original code
    invoke-static {}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getDataSubId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getSimOperatorName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    # Check if mock is enabled and return mock value
    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_real

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getSimOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_real

    return-object v0

    :cond_real
    invoke-static {}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getDataSubId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static getSimState(Landroid/content/Context;)I
    .locals 1

    # Note: getSimState cannot be mocked easily as it returns a dynamic state
    # (int value) representing the SIM card state (absent, ready, locked, etc.).
    # This is a hardware state that changes based on actual SIM card presence and status.

    invoke-static {}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getDataSubId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1

    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;
    .locals 1

    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static isDualSim()Z
    .locals 3

    # Note: isDualSim cannot be mocked easily as it reads from a system property
    # (ro.multisim.simslotcount) which is a read-only system configuration value.
    # System properties cannot be injected via SharedPreferences-based mocking.

    const-string v0, "ro.multisim.simslotcount"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isRoamingNetwork(Landroid/content/Context;)Z
    .locals 1

    # Note: isRoamingNetwork cannot be mocked easily as it returns a dynamic state
    # (boolean value) representing whether the device is currently roaming.
    # This depends on actual network connectivity and changes based on location.

    invoke-static {}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getDataSubId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getDataSubId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getDataSimSlotId$0(Landroid/telephony/SubscriptionManager;)Landroid/telephony/SubscriptionInfo;
    .locals 1

    invoke-static {}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getDataSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getDataSimSlotId$1(Landroid/telephony/SubscriptionInfo;)Ljava/lang/Integer;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "subscriptionID : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getDataSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", slotId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getDataSimSlotId$2()Ljava/lang/Integer;
    .locals 1

    const-string v0, "SubscriptionManager or subscriptionInfo is null, so return 0"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static readMCC(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "901"

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "001,002,999,@65,000"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    const-string p0, "Change Except MCC to Default"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-object v1
.end method

.method public static readMNC(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "00"

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "@5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    const-string p0, "Change Except MNC to Default"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-object v1
.end method

.method public static readNetworkMCC(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getNetworkOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->readMCC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method public static readNetworkMNC(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getNetworkOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->readMNC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method public static readSimMCC(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getSimState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x5

    const-string v2, "901"

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getSimOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->readMCC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public static readSimMNC(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getSimState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x5

    const-string v2, "00"

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getSimOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->readMNC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    return-object v2
.end method
