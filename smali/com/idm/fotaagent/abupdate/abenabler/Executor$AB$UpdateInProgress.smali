.class public Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$UpdateInProgress;
.super Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorUpdateInProgress;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateInProgress"
.end annotation


# static fields
.field private static mergeNow:Z = false


# instance fields
.field private final updateResultUtils:Lcom/idm/fotaagent/utils/UpdateResultUtils;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorUpdateInProgress;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/idm/fotaagent/utils/UpdateResultUtils;

    invoke-direct {p1}, Lcom/idm/fotaagent/utils/UpdateResultUtils;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$UpdateInProgress;->updateResultUtils:Lcom/idm/fotaagent/utils/UpdateResultUtils;

    return-void
.end method

.method public static synthetic b(Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$UpdateInProgress;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$UpdateInProgress;->lambda$setNotificationAndStartMergeCallbackListenerService$0()V

    return-void
.end method

.method private changesDeviceVersion()Z
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->context:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;->getPreviousFirmwareVersion()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->readFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "prevDeviceVersion: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", currentDeviceVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private changesSlotSuffix()Z
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->context:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->getSlotSuffix()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->getSlotSuffix()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "prevSlotSuffix : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", currentSlotSuffix : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Same SlotSuffix"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v2

    :cond_1
    const-string p0, "SlotSuffix has changed"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const-string p0, "SlotSuffix is empty"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return v2
.end method

.method private convertResultCode(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/16 p0, 0x3d

    if-eq p1, p0, :cond_1

    const-string p0, "410"

    return-object p0

    :cond_0
    sget-object p0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->MERGE_NEEDS_REBOOT:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->getDmResultCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->of(I)Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->getDmResultCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setNotificationAndStartMergeCallbackListenerService$0()V
    .locals 1

    const-class v0, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$UpdateInProgress;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$UpdateInProgress;->waitMergeAndReport()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private setNotificationAndStartMergeCallbackListenerService()V
    .locals 3

    sget-boolean v0, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$UpdateInProgress;->mergeNow:Z

    if-eqz v0, :cond_0

    const-string p0, "Already merging"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_AB_UPDATE_MERGE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->taskId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->notify(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LD1/b;

    const/16 v2, 0x10

    invoke-direct {v1, v2, p0}, LD1/b;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$UpdateInProgress;->mergeNow:Z

    return-void
.end method

.method private updatesSuccessfully()Z
    .locals 1

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$UpdateInProgress;->changesSlotSuffix()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$UpdateInProgress;->changesDeviceVersion()Z

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

.method private waitMergeAndReport()V
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->getInstance()Lcom/idm/fotaagent/abupdate/manager/EnablerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->cleanupSuccessfulUpdate()I

    move-result v0

    const-string v1, "merge result : "

    invoke-static {v1, v0}, LB/f;->D(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$UpdateInProgress;->updateResultUtils:Lcom/idm/fotaagent/utils/UpdateResultUtils;

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$UpdateInProgress;->convertResultCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/idm/fotaagent/utils/UpdateResultUtils;->setUpdateResultCode(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorUpdateInProgress;->resumeByReboot()V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$UpdateInProgress;->mergeNow:Z

    return-void
.end method


# virtual methods
.method public idmFumoStart()V
    .locals 2

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$UpdateInProgress;->updatesSuccessfully()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/idm/fotaagent/utils/RebootChecker;->isBootIdChanged(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->SLOT_NOT_CHANGED:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->reportForFailureToDM()V

    return-void

    :cond_0
    sget-object p0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->REBOOT_FAILED:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->reportForFailureToDM()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$UpdateInProgress;->setNotificationAndStartMergeCallbackListenerService()V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->context:Landroid/content/Context;

    const v1, 0x7f130032

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->context:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/idm/fotaagent/utils/ToastHelper;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public resumeByReboot()V
    .locals 2

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->getEnablerFactory()Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;->getTemperatureChecker()Lcom/idm/fotaagent/utils/temperature/TemperatureChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/utils/temperature/TemperatureChecker;->getEventIdFinishReboot()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/idm/fotaagent/utils/temperature/TemperatureChecker;->getTemperature()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/idm/fotaagent/analytics/samsunganalytics/SALogging;->send(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$UpdateInProgress;->updatesSuccessfully()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/idm/fotaagent/utils/RebootChecker;->isBootIdChanged(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->SLOT_NOT_CHANGED:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->reportForFailureToDM()V

    return-void

    :cond_0
    sget-object p0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->REBOOT_FAILED:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->reportForFailureToDM()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$UpdateInProgress;->setNotificationAndStartMergeCallbackListenerService()V

    return-void
.end method
