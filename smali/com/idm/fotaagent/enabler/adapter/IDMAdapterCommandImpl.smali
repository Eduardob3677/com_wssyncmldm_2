.class public Lcom/idm/fotaagent/enabler/adapter/IDMAdapterCommandImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/agent/dm/IDMDmCommandInterface;


# static fields
.field static final PATH_AIDCODE:Ljava/lang/String; = "./DevInfo/Ext/AidCode"

.field static final PATH_CORPID:Ljava/lang/String; = "./DevInfo/Ext/CorpId"

.field static final PATH_COUNTRYISOCODE:Ljava/lang/String; = "./DevInfo/Ext/CountryISOCode"

.field static final PATH_DEVICE_REGISTRATION_STATUS:Ljava/lang/String; = "./DevInfo/Ext/DeviceRegistrationStatus"

.field static final PATH_DEVNETWORKCONNTYPE:Ljava/lang/String; = "./DevInfo/Ext/DevNetworkConnType"

.field static final PATH_DMCLIENTVER:Ljava/lang/String; = "./DevInfo/Ext/DMClientVer"

.field static final PATH_FOTACLIENTVER:Ljava/lang/String; = "./DevInfo/Ext/FotaClientVer"

.field static final PATH_INITIAL_UPDATE:Ljava/lang/String; = "./DevInfo/Ext/InitialUpdate"

.field static final PATH_IPPUSHREGISTRATIONSTATUS:Ljava/lang/String; = "./DevInfo/Ext/IpPushRegistrationStatus"

.field static final PATH_MODEM_ZERO_BILLING:Ljava/lang/String; = "./DevInfo/Ext/ModemZeroBilling"

.field static final PATH_OMCCODE:Ljava/lang/String; = "./DevInfo/Ext/OmcCode"

.field static final PATH_SIMCARDMCC:Ljava/lang/String; = "./DevInfo/Ext/SIMCardMcc"

.field static final PATH_SIMCARDMNC:Ljava/lang/String; = "./DevInfo/Ext/SIMCardMnc"

.field static final PATH_TARGETVERSION:Ljava/lang/String; = "./DevInfo/Ext/TargetVersion"

.field static final PATH_TELEPHONYMCC:Ljava/lang/String; = "./DevInfo/Ext/TelephonyMcc"

.field static final PATH_TELEPHONYMNC:Ljava/lang/String; = "./DevInfo/Ext/TelephonyMnc"

.field static final VALUE_INITIAL_UPDATE:Ljava/lang/String; = "1"

.field static final VALUE_MODEM_EXIST:Ljava/lang/String; = "1"

.field static final VALUE_WIFI_ONLY:Ljava/lang/String; = "0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private processGet(Lcom/idm/service/actioninfo/IDMActionInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p0, "./DevInfo/Ext/DMClientVer"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_1
    const-string p0, "./DevInfo/Ext/CorpId"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_2
    const-string p0, "./DevInfo/Ext/TargetVersion"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_3
    const-string p0, "./DevInfo/Ext/FotaClientVer"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_4
    const-string p0, "./DevInfo/Ext/AidCode"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_5
    const-string p0, "./DevInfo/Ext/OmcCode"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_6
    const-string p0, "./DevDetail/FwV"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_7
    const-string p0, "./DevInfo/Ext/CountryISOCode"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_8
    const-string p0, "./DevInfo/Ext/DevNetworkConnType"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_9
    const-string p0, "./DevInfo/Ext/SIMCardMnc"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_a
    const-string p0, "./DevInfo/Ext/SIMCardMcc"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_b
    const-string p0, "./DevInfo/DevId"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_c
    const-string p0, "./DevInfo/Ext/ModemZeroBilling"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_d
    const-string p0, "./DevInfo/Mod"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_e
    const-string p0, "./DevInfo/Ext/InitialUpdate"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_f
    const-string p0, "./DevInfo/Lang"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_10
    const-string p0, "./DevInfo/Ext/TelephonyMnc"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_11
    const-string p0, "./DevInfo/Ext/TelephonyMcc"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_0

    :cond_11
    move v1, v0

    :goto_0
    const-string p0, "1"

    const-string v2, "N/A"

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    const-string p0, "/State"

    invoke-virtual {p2, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetFumoStatus()I

    move-result v0

    :cond_12
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    return-object v2

    :pswitch_0
    new-instance p0, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;

    invoke-static {}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterCommandImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;->getCorpId()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMInfo;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMInfo;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMInfo;->getTargetVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterCommandImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/fotaagent/utils/DeviceUtils;->readAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->getActivatedId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;

    invoke-static {}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterCommandImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;->getSalesCode()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :pswitch_5
    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->readFirmwareVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->getCountryIsoCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    new-instance p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDeviceInfoImpl;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDeviceInfoImpl;-><init>()V

    invoke-static {}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterCommandImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDeviceInfoImpl;->idmGetUsingBearer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-static {}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->getInstance()Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->isWifiOnly()Z

    move-result p0

    if-nez p0, :cond_14

    invoke-static {}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterCommandImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->readSimMNC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14
    return-object v2

    :pswitch_9
    invoke-static {}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->getInstance()Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->isWifiOnly()Z

    move-result p0

    if-nez p0, :cond_15

    invoke-static {}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterCommandImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->readSimMCC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    return-object v2

    :pswitch_a
    new-instance p0, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;

    invoke-static {}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterCommandImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;->getDeviceId()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :pswitch_b
    invoke-static {}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->getInstance()Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->isWifiOnlyByDevice()Z

    move-result p1

    if-eqz p1, :cond_16

    const-string p0, "0"

    :cond_16
    return-object p0

    :pswitch_c
    new-instance p0, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;

    invoke-static {}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterCommandImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;->getModelName()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :pswitch_d
    return-object p0

    :pswitch_e
    new-instance p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDeviceInfoImpl;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDeviceInfoImpl;-><init>()V

    invoke-static {}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterCommandImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;->idmGetDeviceLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-static {}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterCommandImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->readNetworkMNC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-static {}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterCommandImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->readNetworkMCC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7f053f30 -> :sswitch_11
        -0x7f053ddb -> :sswitch_10
        -0x7eae2d65 -> :sswitch_f
        -0x793d15ee -> :sswitch_e
        -0x672ee34b -> :sswitch_d
        -0x657079dc -> :sswitch_c
        -0x57864efd -> :sswitch_b
        -0x53b2173f -> :sswitch_a
        -0x53b215ea -> :sswitch_9
        -0x488555c6 -> :sswitch_8
        -0x3b783ca9 -> :sswitch_7
        -0x2490af85 -> :sswitch_6
        -0x1efb1989 -> :sswitch_5
        -0xa57a212 -> :sswitch_4
        -0x7aa0399 -> :sswitch_3
        0x2afa7eec -> :sswitch_2
        0x5e468d20 -> :sswitch_1
        0x5f33a394 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private processReplace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterCommandImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "./FUMO/Ext/DoCheckingRooting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "./DevInfo/Ext/DeviceRegistrationStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "./DevInfo/Ext/IpPushRegistrationStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const-string p1, "0"

    const-string v0, "N/A"

    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    new-instance p0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-static {}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterCommandImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->isRootingCheckEnabled()Z

    move-result p0

    const-string p1, "T"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/idm/fotaagent/utils/BinaryStatus;->isOfficial()Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "450"

    return-object p0

    :cond_3
    return-object v0

    :pswitch_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "register device by DM"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    sget-object p1, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->DM:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/restapi/registration/RegistrationHelper;->startDeviceRegistration(Landroid/content/Context;Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;)V

    :cond_4
    return-object v0

    :pswitch_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Lcom/idm/fotaagent/database/room/data/repository/PushRegistrationRepository;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/database/room/data/repository/PushRegistrationRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/PushRegistrationRepository;->isRegistered()Z

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    const-string p1, "register push by DM"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/idm/fotaagent/restapi/registration/RegistrationHelper;->startPushRegistration(Landroid/content/Context;)V

    :cond_6
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x6c1da139 -> :sswitch_2
        -0xab55b04 -> :sswitch_1
        0xfca6170 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public idmProcessAdd(Lcom/idm/service/actioninfo/IDMActionInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "N/A"

    return-object p0
.end method

.method public idmProcessExec(Lcom/idm/service/actioninfo/IDMActionInfo;Ljava/lang/String;)I
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "locURI should not be empty : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return p1

    :cond_0
    const-string p0, "/DownloadAndUpdate"

    invoke-virtual {p2, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "idmProcessExec : IDM_FUMO_DOWNLOADANDUPDATE_PATH"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const/4 p0, 0x2

    return p0

    :cond_1
    const-string p0, "Not supported locURI : "

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return p1
.end method

.method public idmProcessGet(Lcom/idm/service/actioninfo/IDMActionInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "locURI should not be empty : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    const-string p0, "N/A"

    return-object p0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterCommandImpl;->processGet(Lcom/idm/service/actioninfo/IDMActionInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "idmProcessGet "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->H(Ljava/lang/Object;)V

    return-object p0
.end method

.method public idmProcessReplace(Lcom/idm/service/actioninfo/IDMActionInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "locURI should not be empty : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    const-string p0, "N/A"

    return-object p0

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterCommandImpl;->processReplace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "idmProcessReplace "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " data : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->H(Ljava/lang/Object;)V

    return-object p0
.end method
