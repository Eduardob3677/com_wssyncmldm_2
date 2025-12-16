.class public Lcom/idm/fotaagent/abupdate/manager/callbacks/UpdateCallback;
.super Lcom/idm/fotaagent/abupdate/manager/callbacks/AbstractCallback;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/manager/callbacks/AbstractCallback;-><init>()V

    return-void
.end method

.method private calculatePercent(F)I
    .locals 1

    const/high16 p0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, p0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p0

    :goto_0
    const/high16 p0, 0x42c80000    # 100.0f

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private getTaskId()Ljava/lang/String;
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getSessionId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private needsDiscard(I)Z
    .locals 2

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getFumoStatus()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0x1e

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    return v1

    :cond_1
    invoke-static {p1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->containsExceptIdle(I)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method private reportForFailure(Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;)V
    .locals 0

    sget-object p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->NOTIFICATION_ID_PRIMARY:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->cancel(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->reportForFailureToDLDM()V

    return-void
.end method

.method private updateNotification()V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getFumoStatus()I

    move-result v0

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_DOWNLOAD_PROGRESS:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/manager/callbacks/UpdateCallback;->getTaskId()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->notify(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doSetResultCode(Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;)V
    .locals 4

    invoke-static {}, Lcom/idm/fotaagent/abupdate/abenabler/utils/UpdateEngineWakeLockManager;->get()Lcom/idm/fotaagent/abupdate/abenabler/utils/UpdateEngineWakeLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/abenabler/utils/UpdateEngineWakeLockManager;->releaseWakeLock()V

    invoke-static {}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->getInstance()Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;

    move-result-object v0

    const-class v1, Lcom/idm/fotaagent/receiver/dynamic/LowBatteryReceiver;

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->unregister(Ljava/lang/Class;)V

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->isReportFumoStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "ignore due to reporting"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v1, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_TRANSFER_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    if-ne p1, v1, :cond_5

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getDlCurrentRetryCount()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "currentRetryCount : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", maxRetryCount : 15"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v2, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v2}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {v2}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getFumoStatus()I

    move-result v2

    const/16 v3, 0xf2

    if-ne v2, v3, :cond_1

    const-string p0, "trying pause"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_1
    const/16 v2, 0xf

    if-ge v1, v2, :cond_3

    invoke-static {}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;->getInstance()Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;

    move-result-object p1

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/manager/callbacks/UpdateCallback;->getTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;->isDLRetriable(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/idm/fotaagent/utils/network/WifiNetworkId;->getNetworkId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/abupdate/manager/callbacks/UpdateCallback;->startDownloadingWith(J)V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setDlCurrentRetryCount(I)V

    new-instance v1, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskConnectFailed;

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/manager/callbacks/UpdateCallback;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskConnectFailed;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getDlTotalRetryCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_4

    invoke-virtual {p1}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->reportForFailureToDLDM()V

    return-void

    :cond_4
    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setDlTotalRetryCount(I)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/manager/callbacks/AbstractCallback;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/fotaagent/scheduler/jobschedule/NetworkResumeJobScheduleManager;->schedule(Landroid/content/Context;)V

    return-void

    :cond_5
    sget-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->USER_CANCELED:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    if-ne p1, v0, :cond_6

    invoke-static {}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->getInstance()Lcom/idm/fotaagent/abupdate/manager/EnablerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->setPaused()V

    return-void

    :cond_6
    sget-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->UPDATED_BUT_NOT_ACTIVE:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    if-eq p1, v0, :cond_8

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/manager/callbacks/AbstractCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->isPackageVerificationEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    invoke-direct {p0, p1}, Lcom/idm/fotaagent/abupdate/manager/callbacks/UpdateCallback;->reportForFailure(Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;)V

    return-void

    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/manager/callbacks/UpdateCallback;->reportForSuccess()V

    return-void
.end method

.method public reportForSuccess()V
    .locals 4

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/manager/callbacks/UpdateCallback;->getTaskId()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->isTriggeredBySideload()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/idm/agent/dl/DLResultCode;->SUCCESS:Lcom/idm/agent/dl/DLResultCode;

    invoke-virtual {v1}, Lcom/idm/agent/dl/DLResultCode;->getDmResultCode()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x23

    invoke-virtual {v0, v3, v2}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->callbackIfPossible(ILjava/lang/String;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess;->getInstance()Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess;

    move-result-object v0

    invoke-virtual {v1}, Lcom/idm/agent/dl/DLResultCode;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess;->report(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "download via the local file. skip report and change fumo status to IDM_DL_STATE_DOWNLOAD_COMPLETE directly."

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x28

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->callbackIfPossible(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setUpdateInfo(I)V
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p0, p1, v0}, Lcom/idm/fotaagent/abupdate/manager/callbacks/UpdateCallback;->setUpdateInfo(IF)V

    return-void
.end method

.method public setUpdateInfo(IF)V
    .locals 2

    invoke-static {p1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->ofNullable(I)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/manager/callbacks/AbstractCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->getUpdateInfo()Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;->installationStep()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;

    invoke-direct {p0, p2}, Lcom/idm/fotaagent/abupdate/manager/callbacks/UpdateCallback;->calculatePercent(F)I

    move-result p2

    invoke-direct {v0, p1, p2}, Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;-><init>(Ljava/lang/Integer;I)V

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance p1, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/manager/callbacks/AbstractCallback;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->setUpdateInfo(Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/manager/callbacks/UpdateCallback;->updateNotification()V

    return-void
.end method

.method public setUpdateStatus(IF)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setUpdateStatus : status ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") ratio("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%f"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->getInstance()Lcom/idm/fotaagent/abupdate/manager/EnablerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->setUpdateStatus(I)V

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/abupdate/manager/callbacks/UpdateCallback;->needsDiscard(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ignore this callback"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/idm/fotaagent/abupdate/manager/callbacks/UpdateCallback;->setUpdateInfo(IF)V

    return-void
.end method

.method public startDownloadingWith(J)V
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->getInstance()Lcom/idm/fotaagent/abupdate/manager/EnablerManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->applyPayload(J)V

    return-void
.end method
