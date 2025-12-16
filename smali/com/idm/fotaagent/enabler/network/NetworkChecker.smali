.class abstract Lcom/idm/fotaagent/enabler/network/NetworkChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isEmergency()Z
    .locals 1

    new-instance p0, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->isEmergencyService()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "0. Emergency Service Type -> UrgentDownload"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isUrgentPush(Ljava/lang/String;)Z
    .locals 2

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getPushUiMode()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "2. pushUiMode("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") Non-urgent Push or Non push:  -> Not UrgentDownload"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1. Urgent push("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") -> UrgentDownload"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return p1
.end method


# virtual methods
.method public abstract getBlockedTypeOfWifiBackgroundPush(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;
.end method

.method public abstract getBlockedTypeOfWifiOnlyForDl(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;
.end method

.method public getNetworkBlockedType(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;
    .locals 2

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v1, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->isTriggeredBySideload()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->NO_BLOCKING:Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/idm/fotaagent/utils/NetworkUtil;->isWiFiNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "wifi connected"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    sget-object p0, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->NO_BLOCKING:Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    return-object p0

    :cond_1
    invoke-static {v0}, Lcom/idm/fotaagent/utils/NetworkUtil;->isBlockedByRoaming(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "blocked due to roaming"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    sget-object p0, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->ROAMING:Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    return-object p0

    :cond_2
    invoke-static {v0}, Lcom/idm/fotaagent/utils/NetworkUtil;->isMobileNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p0, "Both wifi and mobile network disconnected"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    sget-object p0, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->NETWORK_DISCONNECTED:Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    return-object p0

    :cond_3
    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/network/NetworkChecker;->isEmergency()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "allowed by emergency concept"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    sget-object p0, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->NO_BLOCKING:Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    return-object p0

    :cond_4
    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/network/NetworkChecker;->isUrgentPush(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "allowed by urgent concept"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/network/NetworkChecker;->getBlockedTypeOfWifiBackgroundPush(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->getInstance()Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->isWifiOnly()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "Wifi only, wifi disconnected : blocked"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    sget-object p0, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->WIFI_DISCONNECTED:Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    return-object p0

    :cond_6
    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/network/NetworkChecker;->getBlockedTypeOfWifiOnlyForDl(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    move-result-object p0

    return-object p0
.end method

.method public isUrgentDownload(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/network/NetworkChecker;->isEmergency()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/network/NetworkChecker;->isUrgentPush(Ljava/lang/String;)Z

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
