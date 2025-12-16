.class public Lcom/idm/fotaagent/utils/NetworkUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCapabilityType(Landroid/content/Context;)I
    .locals 20

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getDataSimSlotId(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/feature/CarrierFeature;->getConfigApnType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    const/16 v3, 0xf

    const/16 v4, 0xe

    const/16 v5, 0xd

    const/16 v6, 0xc

    const/16 v7, 0xb

    const/16 v8, 0xa

    const/16 v9, 0x9

    const/16 v10, 0x8

    const/4 v11, 0x7

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/16 v16, 0x2

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "VALIDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    move/from16 v19, v2

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "NOT_METERED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    move/from16 v19, v3

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "NOT_RESTRICTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    move/from16 v19, v4

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "XCAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    move/from16 v19, v5

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "SUPL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    move/from16 v19, v6

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "FOTA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    move/from16 v19, v7

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "EIMS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    move/from16 v19, v8

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "RCS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    move/from16 v19, v9

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "MMS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    move/from16 v19, v10

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "IMS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    move/from16 v19, v11

    goto :goto_0

    :sswitch_a
    const-string v1, "DUN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    move/from16 v19, v12

    goto :goto_0

    :sswitch_b
    const-string v1, "CBS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    move/from16 v19, v13

    goto :goto_0

    :sswitch_c
    const-string v1, "IA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    move/from16 v19, v14

    goto :goto_0

    :sswitch_d
    const-string v1, "TRUSTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    move/from16 v19, v15

    goto :goto_0

    :sswitch_e
    const-string v1, "WIFI_P2P"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    move/from16 v19, v16

    goto :goto_0

    :sswitch_f
    const-string v1, "NOT_VPN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    move/from16 v19, v17

    goto :goto_0

    :sswitch_10
    const-string v1, "CAPTIVE_PORTAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_0

    :cond_10
    move/from16 v19, v18

    :goto_0
    packed-switch v19, :pswitch_data_0

    return v6

    :pswitch_0
    return v2

    :pswitch_1
    return v7

    :pswitch_2
    return v5

    :pswitch_3
    return v9

    :pswitch_4
    return v17

    :pswitch_5
    return v15

    :pswitch_6
    return v8

    :pswitch_7
    return v10

    :pswitch_8
    return v18

    :pswitch_9
    return v14

    :pswitch_a
    return v16

    :pswitch_b
    return v13

    :pswitch_c
    return v11

    :pswitch_d
    return v4

    :pswitch_e
    return v12

    :pswitch_f
    return v3

    :pswitch_10
    const/16 v0, 0x11

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x6b0e21cb -> :sswitch_10
        -0x563ee6b8 -> :sswitch_f
        -0x212e897c -> :sswitch_e
        -0x13b25f29 -> :sswitch_d
        0x918 -> :sswitch_c
        0x103d4 -> :sswitch_b
        0x109dd -> :sswitch_a
        0x11baf -> :sswitch_9
        0x12ab3 -> :sswitch_8
        0x13c42 -> :sswitch_7
        0x20794a -> :sswitch_6
        0x2104f6 -> :sswitch_5
        0x2703de -> :sswitch_4
        0x29045a -> :sswitch_3
        0x2c1fd67 -> :sswitch_2
        0x571af83c -> :sswitch_1
        0x63f219ee -> :sswitch_0
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
    .end packed-switch
.end method

.method public static isAnyNetworkConnected(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "Context is null. The network is treated as not connected."

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return v0

    :cond_0
    invoke-static {p0}, Lcom/idm/fotaagent/utils/NetworkUtil;->isWiFiNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/idm/fotaagent/utils/NetworkUtil;->isMobileNetworkConnected(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static isBlockedByRoaming(Landroid/content/Context;)Z
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDeviceInfoImpl;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDeviceInfoImpl;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDeviceInfoImpl;->idmIsAvailableFOTAWithRoamingNetwork(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isConnectedDataNetworkDomesticRoaming(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/idm/fotaagent/utils/NetworkUtil;->isConnectedDataNetworkRoaming(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getCurrentDataRoamingType(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isConnectedDataNetworkRoaming(Landroid/content/Context;)Z
    .locals 2

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "connectivityManager should not be null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "capabilities is null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return v0

    :cond_1
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static isMobileNetworkConnected(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/idm/fotaagent/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method private static isNetworkConnected(Landroid/content/Context;I)Z
    .locals 3

    const-string v0, "networkType "

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "Context is null. The network is treated as not connected."

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return v1

    :cond_0
    :try_start_0
    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is connected : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    return v1
.end method

.method public static isRoamingNetwork(Landroid/content/Context;)Z
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->isRoamingCheckEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Roaming check is false"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->isRoamingNetwork(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isUiccMobilityLocked(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "gsm.facilitylock.state"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getSimState(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "PinLock OFF !!"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const-string p0, "PinLock ON !!"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v1
.end method

.method public static isWiFiNetworkConnected(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/idm/fotaagent/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Wifi Network is connected"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
