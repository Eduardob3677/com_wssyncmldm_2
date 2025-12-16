.class public Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker$LazyInstanceHolder;
    }
.end annotation


# static fields
.field static final BEARER_MOBILE_ALLOWED:I = 0x0

.field static final BEARER_WIFI_ONLY:I = 0x1


# instance fields
.field private isWifiOnlyByBearer:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->loadWifiOnlyByBearer()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$WifiOnlyDevice;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->lambda$isWifiOnlyByDevice$0(Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$WifiOnlyDevice;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$WifiOnlyBearer;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->lambda$isWifiOnlyByBearer$1(Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$WifiOnlyBearer;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private getContext()Landroid/content/Context;
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker$LazyInstanceHolder;->access$100()Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;

    move-result-object v0

    return-object v0
.end method

.method private isWifiOnlyByBearer()Z
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockWifiOnlyBearer;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockWifiOnlyBearer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;->getValue()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LG2/b;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, LG2/b;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    iget-boolean p0, p0, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->isWifiOnlyByBearer:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$isWifiOnlyByBearer$1(Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$WifiOnlyBearer;)Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$WifiOnlyBearer;->WIFI_ONLY_BEARER_ON:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$WifiOnlyBearer;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$isWifiOnlyByDevice$0(Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$WifiOnlyDevice;)Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$WifiOnlyDevice;->WIFI_ONLY_DEVICE_ON:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$WifiOnlyDevice;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public isWifiOnly()Z
    .locals 1

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->isWifiOnlyByDevice()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->isWifiOnlyByBearer()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isWifiOnlyByDevice()Z
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockWifiOnlyDevice;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockWifiOnlyDevice;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;->getValue()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LG2/b;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, LG2/b;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->isWifiOnly()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isWifiOnlyForDl(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->isWifiOnly()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;

    new-instance v1, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v1, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->getWifiOnlyForDl()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Wifi Only For DL by FUMO"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v0

    :cond_1
    invoke-static {}, Lcom/samsung/android/fotaagent/common/feature/CarrierFeature;->isWifiOnlyForDl()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Wifi Only For DL by CarrierFeature"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v0

    :cond_2
    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/Operator;->get()Lcom/idm/fotaagent/enabler/feature/Operator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/feature/Operator;->isWifiOnlyForDl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "Wifi Only For DL by Operator"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public loadWifiOnlyByBearer()V
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/fotaagent/database/sqlite/database/settings/SettingsDatabaseManager;->getFotaBearerStatus(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->isWifiOnlyByBearer:Z

    if-eqz v1, :cond_1

    const-string p0, "isWifiOnlyByBearer enabled"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
