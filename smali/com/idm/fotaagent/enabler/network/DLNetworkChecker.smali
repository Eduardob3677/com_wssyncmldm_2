.class public Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;
.super Lcom/idm/fotaagent/enabler/network/NetworkChecker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$InstanceLazyHolder;,
        Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/network/NetworkChecker;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$InstanceLazyHolder;->access$100()Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;

    move-result-object v0

    return-object v0
.end method

.method private getNetworkBlockedTypeAfterRetry(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;
    .locals 4

    sget-object p0, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->NO_BLOCKING:Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    const/4 v0, 0x1

    :goto_0
    const-wide/16 v1, 0x12c

    const/4 v3, 0x5

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network checking retrying... max : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", current : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;->getInstance()Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;->getNetworkBlockedType(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->isBlocked()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    if-lt v0, v3, :cond_0

    goto :goto_2

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    :goto_2
    return-object p0
.end method

.method private increaseRetryCount(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getDlCurrentRetryCount()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setDlCurrentRetryCount(I)V

    return-void
.end method

.method private resetRetryCount(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setDlCurrentRetryCount(I)V

    return-void
.end method

.method private resetRetryCountAndScheduleNetworkResumeJobService(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setDlCurrentRetryCount(I)V

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/fotaagent/scheduler/jobschedule/NetworkResumeJobScheduleManager;->schedule(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getBlockedTypeOfWifiBackgroundPush(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getPushUiMode()I

    move-result p1

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->isDownloadFumoStatus()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    const-string p0, "WifiBackGroundPush, wifi disconnected : DL blocked"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    sget-object p0, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->WIFI_DISCONNECTED:Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    return-object p0

    :cond_0
    sget-object p0, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->NO_BLOCKING:Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    return-object p0
.end method

.method public getBlockedTypeOfWifiOnlyForDl(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->isDownloadFumoStatus()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->getInstance()Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->isWifiOnlyForDl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Wifi only for Dl, wifi disconnected : DL blocked"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    sget-object p0, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->WIFI_DISCONNECTED:Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    return-object p0

    :cond_0
    sget-object p0, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->NO_BLOCKING:Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    return-object p0
.end method

.method public bridge synthetic getNetworkBlockedType(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;
    .locals 0

    invoke-super {p0, p1}, Lcom/idm/fotaagent/enabler/network/NetworkChecker;->getNetworkBlockedType(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    move-result-object p0

    return-object p0
.end method

.method public isDLRetriable(Ljava/lang/String;)Z
    .locals 5

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;->getNetworkBlockedTypeAfterRetry(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    move-result-object v0

    sget-object v1, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->ROAMING:Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const-string v1, "1-1 roaming"

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;->resetRetryCountAndScheduleNetworkResumeJobService(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->getFumoTaskEvent(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    return v2

    :cond_0
    new-instance v1, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v1, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getFumoStatus()I

    move-result v1

    const/16 v3, 0xe6

    const/4 v4, 0x1

    if-ne v1, v3, :cond_2

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1-2-1 User cancel, blocked"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;->resetRetryCountAndScheduleNetworkResumeJobService(Ljava/lang/String;)V

    sget-object p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_SYNC_DM:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->cancel(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)V

    return v2

    :cond_1
    const-string v0, "1-2-2 User cancel, retry again"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;->increaseRetryCount(Ljava/lang/String;)V

    return v4

    :cond_2
    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->isBlocked()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "1-3 blocked"

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;->resetRetryCountAndScheduleNetworkResumeJobService(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->getFumoTaskEvent(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    return v2

    :cond_3
    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/network/NetworkChecker;->isUrgentDownload(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "1-4 retry due to urgent"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;->increaseRetryCount(Ljava/lang/String;)V

    return v4

    :cond_4
    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/fotaagent/database/sqlite/database/settings/SettingsDatabaseManager;->getAutoDownloadOption(Landroid/content/Context;)Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/fotaagent/common/feature/CarrierFeature;->isShowMobileNetworkWarning()Z

    move-result v3

    invoke-virtual {v1, v0, v3}, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->isRetriable(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "1-5 Retry since isRetriable is true"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;->increaseRetryCount(Ljava/lang/String;)V

    return v4

    :cond_5
    const-string v0, "1-6 show retry confirm since isRetriable is false"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;->resetRetryCount(Ljava/lang/String;)V

    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadRetryConfirm;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadRetryConfirm;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    return v2
.end method

.method public shouldShow(Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;Ljava/lang/String;)Z
    .locals 8

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v1, p2}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/idm/fotaagent/utils/NetworkUtil;->isWiFiNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v0}, Lcom/idm/fotaagent/database/sqlite/database/settings/SettingsDatabaseManager;->getAutoDownloadOption(Landroid/content/Context;)Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/fotaagent/common/feature/CarrierFeature;->isShowMobileNetworkWarning()Z

    move-result v4

    invoke-virtual {p0, p2}, Lcom/idm/fotaagent/enabler/network/NetworkChecker;->isUrgentDownload(Ljava/lang/String;)Z

    move-result p0

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "1/2. UrgentDownload -> do not show "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v5

    :cond_0
    sget-object p0, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;->DOWNLOAD_CONFIRM:Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;

    const/4 v6, 0x1

    if-ne p1, p0, :cond_2

    new-instance p0, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->isOptionalService()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getIsContinuousUpdateSession()Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "3. Optional Service Type -> show "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v6

    :cond_1
    invoke-static {}, Lcom/samsung/android/fotaagent/common/feature/CarrierFeature;->isShowDeltaSizeBeforeDownload()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "4. NotifyDeltaSizeBeforeDownload -> show "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v6

    :cond_2
    invoke-static {}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->getInstance()Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->isWifiOnlyForDl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    if-eqz v2, :cond_4

    sget-object p0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->WIFI:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    if-eq v3, p0, :cond_3

    sget-object p0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->WIFI_AND_CELLULAR:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    if-ne v3, p0, :cond_4

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "5-1. WiFiOnly + Auto download menu : "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " -> do not show "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v5

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "5-2. WiFiOnly + Auto download menu : "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " and wifiConnected : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " -> show "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v6

    :cond_5
    invoke-virtual {v3, v0, v4}, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->skipShowConfirm(Landroid/content/Context;Z)Z

    move-result p0

    xor-int/2addr p0, v6

    return p0
.end method
