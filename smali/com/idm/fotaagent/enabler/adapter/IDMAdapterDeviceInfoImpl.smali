.class public Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDeviceInfoImpl;
.super Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;
.source "SourceFile"


# static fields
.field static final NETWORK_CONNECT_TYPE_3G:Ljava/lang/String; = "3G"

.field static final NETWORK_CONNECT_TYPE_5G:Ljava/lang/String; = "5G"

.field static final NETWORK_CONNECT_TYPE_LTE:Ljava/lang/String; = "LTE"

.field static final NETWORK_CONNECT_TYPE_WIFI:Ljava/lang/String; = "WIFI"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDeviceInfoImpl;->lambda$idmGetExtendDevInfo$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDeviceInfoImpl;->lambda$idmGetExtendDevInfo$1(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$idmGetExtendDevInfo$0(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$idmGetExtendDevInfo$1(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    const-string p1, "./DevInfo/Ext/CorpId"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "./DevInfo/Ext/TargetVersion"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public idmGetDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;->getDeviceId()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public idmGetExtendDevInfo()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "./DevInfo/Ext/DevNetworkConnType"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "./DevInfo/Ext/TelephonyMcc"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "./DevInfo/Ext/TelephonyMnc"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "./DevInfo/Ext/OmcCode"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "./DevInfo/Ext/FotaClientVer"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "./DevInfo/Ext/DMClientVer"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "./DevInfo/Ext/ModemZeroBilling"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->getInstance()Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->isWifiOnly()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "./DevInfo/Ext/SIMCardMcc"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "./DevInfo/Ext/SIMCardMnc"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;->getCorpId()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/idm/adapter/filesystem/a;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/idm/adapter/filesystem/a;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LC2/c;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, LC2/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->isTSS2_0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->getCountryIsoCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->getActivatedId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "./DevInfo/Ext/AidCode"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "./DevInfo/Ext/CountryISOCode"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;->isInitialUpdate()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "./DevInfo/Ext/InitialUpdate"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p0
.end method

.method public idmGetUsingBearer(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string p0, "szBearer : "

    :try_start_0
    invoke-static {p1}, Lcom/idm/fotaagent/utils/NetworkUtil;->isWiFiNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "WIFI"

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getDataNetworkType(Landroid/content/Context;)I

    move-result p1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_2

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const-string p1, "3G"

    goto :goto_0

    :cond_1
    const-string p1, "5G"

    goto :goto_0

    :cond_2
    const-string p1, "LTE"

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->H(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public idmIsAvailableFOTAWithRoamingNetwork(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    new-instance p0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->isRoamingCheckEnabled()Z

    move-result p0

    const/4 p2, 0x1

    if-nez p0, :cond_0

    return p2

    :cond_0
    invoke-static {p1}, Lcom/idm/fotaagent/utils/NetworkUtil;->isConnectedDataNetworkDomesticRoaming(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/samsung/android/fotaagent/common/feature/InRoaming;->get()Lcom/samsung/android/fotaagent/common/feature/InRoaming;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/fotaagent/common/feature/InRoaming;->DOMESTIC_MOBILE_ALLOWED:Lcom/samsung/android/fotaagent/common/feature/InRoaming;

    if-ne p0, v0, :cond_1

    return p2

    :cond_1
    invoke-static {p1}, Lcom/idm/fotaagent/utils/NetworkUtil;->isConnectedDataNetworkRoaming(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/samsung/android/fotaagent/common/feature/InRoaming;->get()Lcom/samsung/android/fotaagent/common/feature/InRoaming;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/fotaagent/common/feature/InRoaming;->MOBILE_ALLOWED:Lcom/samsung/android/fotaagent/common/feature/InRoaming;

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :cond_3
    :goto_0
    return p2
.end method
