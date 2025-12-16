.class public Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final instance:Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;


# instance fields
.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private isResetRequired:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;

    invoke-direct {v0}, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;-><init>()V

    sput-object v0, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->instance:Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IDMSchedulerHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Lcom/idm/fotaagent/scheduler/d;

    invoke-direct {v2, p0}, Lcom/idm/fotaagent/scheduler/d;-><init>(Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;)V

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->isResetRequired:Z

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->lambda$new$0(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method private activateSFotaServerIfNoActiveServer()V
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getReleaseServerInfo()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Active ServerInfo is null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->doesSFotaServerInfoExist()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->activateSFotaServer()V

    return-void

    :cond_1
    const-string p0, "SFotaServer Not Found"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    new-instance p0, Lcom/idm/fotaagent/scheduler/exception/SFotaServerNotFoundException;

    invoke-direct {p0}, Lcom/idm/fotaagent/scheduler/exception/SFotaServerNotFoundException;-><init>()V

    throw p0
.end method

.method private checkSetupWizardCompleted()V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/idm/fotaagent/utils/GeneralUtils;->isSetupWizardCompleted(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "SUW for major update is not finished yet"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private deleteGarbageFor(Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;)V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getEntity()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/service/actioninfo/IDMActionInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v1, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getFumoStatus()I

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->getEnablerFactory()Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;->getLibraryUtils()Lcom/idm/fotaagent/utils/LibraryUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/idm/fotaagent/utils/LibraryUtils;->isTaskRunning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->context:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->isNone()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->deleteEnablerEntitiesAndResetFumoExtMo()V

    return-void

    :cond_3
    sget-object p0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->SCHEDULE_TYPE_USERINIT:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    if-ne p1, p0, :cond_4

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->deleteEnablerEntitiesAndResetFumoExtMo()V

    :cond_4
    return-void
.end method

.method private finalize(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getFumoStatus()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fumoStatus : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "taskId : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getSuCancel()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->finishAllActivities()V

    :cond_0
    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->isTriggeredBySideload()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/idm/fotaagent/utils/storage/FileManager;

    invoke-direct {p1}, Lcom/idm/fotaagent/utils/storage/FileManager;-><init>()V

    invoke-virtual {p1}, Lcom/idm/fotaagent/utils/storage/FileManager;->deleteDeltaAndMetadataFiles()V

    :cond_1
    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->finishEntryActivityIfExists()V

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->deleteEnablerEntitiesAndResetFumoExtMo()V

    iget-object p1, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/idm/fotaagent/database/sqlite/database/settings/SettingsDatabaseManager;->disableFirstNetInstall(Landroid/content/Context;)V

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->isABModel()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->getInstance()Lcom/idm/fotaagent/abupdate/manager/EnablerManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->resetUpdateEngine()V

    :cond_2
    sget-object p1, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->NOTIFICATION_ID_PRIMARY:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->cancel(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeManager;->cancel()V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo;->reset()V

    iget-object p1, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpirationManager;->cancel(Landroid/content/Context;)V

    new-instance p1, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;

    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->context:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;->clearBootTime()V

    return-void
.end method

.method private finalizeAndStartScheduleIfExists(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->finalize(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->startScheduleIfExists()V

    return-void
.end method

.method public static getInstance()Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->instance:Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;

    return-object v0
.end method

.method private idmHandleMessage(Landroid/os/Message;)V
    .locals 7

    const-string v0, "430"

    const-string v1, "Handle Intent Resume : "

    const-string v2, "isResetRequired : "

    const-string v3, "Handle Schedule Message : "

    const/4 v4, 0x1

    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;->valueOf(I)Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v3, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;

    iget-object v6, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->context:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;->isFinishedResetTask()Z

    move-result v3

    iget-boolean v6, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->isResetRequired:Z

    if-nez v6, :cond_0

    if-nez v3, :cond_1

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->isResetRequired:Z

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isFinishedResetTask : "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    const-string v2, "DM Initialization has failed before; reset, hoping to succeed"

    invoke-static {v2}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/InitExecutor;->get()Lcom/idm/fotaagent/InitExecutor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/idm/fotaagent/InitExecutor;->reset()V

    iget-object v2, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->context:Landroid/content/Context;

    sget-object v3, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->FOTA_AGENT:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    invoke-static {v2, v3}, Lcom/idm/fotaagent/restapi/registration/RegistrationHelper;->startDeviceRegistration(Landroid/content/Context;Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;)V

    :cond_1
    invoke-static {}, Lcom/idm/fotaagent/InitExecutor;->get()Lcom/idm/fotaagent/InitExecutor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/idm/fotaagent/InitExecutor;->waitForInitialization()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->isResetRequired:Z

    invoke-direct {p0}, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->activateSFotaServerIfNoActiveServer()V

    invoke-static {}, Lcom/idm/fotaagent/scheduler/DeviceInfoState;->get()Lcom/idm/fotaagent/scheduler/DeviceInfoState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/idm/fotaagent/scheduler/DeviceInfoState;->checkException()V

    invoke-direct {p0}, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->checkSetupWizardCompleted()V

    invoke-direct {p0}, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->startNotificationService()V

    sget-object v2, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler$1;->$SwitchMap$com$idm$fotaagent$scheduler$interfaces$IDMSchedulerInterface$IDM_SCHEDULE_EVENT:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v4, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v1, 0x4

    if-eq v2, v1, :cond_2

    const/4 v1, 0x5

    if-eq v2, v1, :cond_2

    return-void

    :cond_2
    new-instance v1, Lcom/idm/fotaagent/BundleWrapper;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "data should not be null"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/BundleWrapper;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/BundleWrapper;->getConsumer()Lcom/idm/fotaagent/SerializableConsumer;

    move-result-object v2

    const-string v3, "consumer should not be null"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Ljava/util/function/Consumer;

    invoke-virtual {v1}, Lcom/idm/fotaagent/BundleWrapper;->getTaskId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "taskId should not be null"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception p1

    goto/16 :goto_3

    :catch_4
    move-exception p0

    goto/16 :goto_4

    :cond_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor;

    if-nez v2, :cond_4

    const-string v1, "intentResumeExecutor is null"

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor;->resumeIfPossible()V

    return-void

    :cond_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->finalizeAndStartScheduleIfExists(Ljava/lang/String;)V

    return-void

    :cond_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;

    if-nez v1, :cond_7

    const-string v1, "schedulerInfo should not be null"

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_7
    new-instance v2, Lcom/idm/fotaagent/database/sqlite/database/dao/ScheduleInfoDao;

    invoke-direct {v2}, Lcom/idm/fotaagent/database/sqlite/database/dao/ScheduleInfoDao;-><init>()V

    invoke-virtual {v2, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->insertEntity(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->idmSetIndex(J)V

    invoke-direct {p0, v1}, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->startSchedule(Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/idm/fotaagent/scheduler/exception/DeviceInfoEmptyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/idm/fotaagent/scheduler/exception/DeviceInfoChangedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->finishEntryActivityIfExists()V

    goto/16 :goto_5

    :goto_1
    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/idm/fotaagent/InitExecutor;->get()Lcom/idm/fotaagent/InitExecutor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/fotaagent/InitExecutor;->reset()V

    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->context:Landroid/content/Context;

    sget-object p1, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->FOTA_AGENT:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/restapi/registration/RegistrationHelper;->startDeviceRegistration(Landroid/content/Context;Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;)V

    goto :goto_5

    :goto_2
    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->finishEntryActivityIfExists()V

    iget-object v2, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->context:Landroid/content/Context;

    const v3, 0x7f1300a5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->showToastIfUserInit(Landroid/os/Message;Ljava/lang/String;)V

    new-instance p0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->withDescription(Ljava/lang/String;)Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->report()V

    goto :goto_5

    :goto_3
    invoke-static {}, Lcom/idm/fotaagent/InitExecutor;->get()Lcom/idm/fotaagent/InitExecutor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/fotaagent/InitExecutor;->isDmInitialized()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/idm/fotaagent/utils/RebootChecker$RebootRequiredException;

    if-nez v1, :cond_8

    iput-boolean v4, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->isResetRequired:Z

    const-string p0, "reset required"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    :cond_8
    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->finishEntryActivityIfExists()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Lcom/idm/fotaagent/restapi/registration/DeviceNotRegisteredException;

    if-nez p0, :cond_9

    new-instance p0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->withDescription(Ljava/lang/String;)Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->report()V

    goto :goto_5

    :goto_4
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->finishEntryActivityIfExists()V

    :cond_9
    :goto_5
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->idmHandleMessage(Landroid/os/Message;)V

    const/4 p0, 0x1

    return p0
.end method

.method private showToastIfUserInit(Landroid/os/Message;Ljava/lang/String;)V
    .locals 4

    const-string v0, "Ignore. InitType is "

    const-string v1, "Ignore. triggered by "

    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;->valueOf(I)Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    move-result-object v2

    sget-object v3, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;->SCHEDULE_EVENT_SCHEDULE_START:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    if-eq v2, v3, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;

    if-nez p1, :cond_1

    const-string p0, "schedulerInfo should not be null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->idmGetSchedulerInitType()Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    move-result-object v1

    sget-object v2, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->SCHEDULE_TYPE_USERINIT:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    if-eq v1, v2, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->idmGetSchedulerInitType()Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->context:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/idm/fotaagent/utils/ToastHelper;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private startNotificationService()V
    .locals 0

    const-string p0, ""

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->startService()V

    return-void
.end method

.method private startSchedule(Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;)V
    .locals 4

    invoke-virtual {p1}, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->idmGetSchedulerInitType()Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->deleteGarbageFor(Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;)V

    new-instance v1, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getEntity()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/service/actioninfo/IDMActionInfo;

    if-nez v1, :cond_3

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/FreezePeriods;->isFreezePeriod()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "AfW: freeze period"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->idmGetSchedulerInitType()Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    move-result-object p0

    sget-object v1, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->SCHEDULE_TYPE_SERVERINIT:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    if-ne p0, v1, :cond_0

    const-string p0, "allows to proceed in server init"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->start()V

    return-void

    :cond_0
    const-string p0, "blocks to proceed in user init or device init"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    sget-object p0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->SCHEDULE_TYPE_USERINIT:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    if-ne v0, p0, :cond_1

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->IDM_DIALOG_BLOCKED_DEVICE_BY_POLICY:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->sendDialogMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;)V

    :cond_1
    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ScheduleInfoDao;

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ScheduleInfoDao;-><init>()V

    invoke-virtual {p1}, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->idmGetIndex()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->deleteEntity(J)I

    return-void

    :cond_2
    const-string p0, "no actions is progressing or pending -> start scheduleInfo"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->start()V

    return-void

    :cond_3
    sget-object v2, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler$1;->$SwitchMap$com$idm$fotaagent$scheduler$interfaces$IDMSchedulerInterface$IDM_SCHEDULE_TYPE:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "unexpected value: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v1, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getFumoStatus()I

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->getEnablerFactory()Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;->getLibraryUtils()Lcom/idm/fotaagent/utils/LibraryUtils;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/idm/fotaagent/utils/LibraryUtils;->isTaskRunning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "action is progressing: discard USERINIT and show toast"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ScheduleInfoDao;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ScheduleInfoDao;-><init>()V

    invoke-virtual {p1}, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->idmGetIndex()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->deleteEntity(J)I

    iget-object p1, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->context:Landroid/content/Context;

    const v0, 0x7f130027

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f130022

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s%n%s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->context:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/utils/ToastHelper;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->finishEntryActivityIfExists()V

    return-void

    :cond_4
    const-string p0, "action is progressing or pending: start USERINIT_RESUME"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getActionInfo()Lcom/idm/service/actioninfo/IDMActionInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->idmSetActionInfo(Lcom/idm/service/actioninfo/IDMActionInfo;)V

    sget-object p0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->SCHEDULE_TYPE_USERINIT_RESUME:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    invoke-virtual {p1, p0}, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->idmSetSchedulerInitType(Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->start()V

    :goto_0
    return-void

    :pswitch_1
    const-string p0, "action is progressing or pending: discard DEVICEINIT"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ScheduleInfoDao;

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ScheduleInfoDao;-><init>()V

    invoke-virtual {p1}, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->idmGetIndex()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->deleteEntity(J)I

    return-void

    :pswitch_2
    const-string p0, "action is progressing or pending: SERVERINIT will start when this session is finished"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :pswitch_3
    const-string p0, "action is progressing or pending: start SU_CANCEL"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->start()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startScheduleIfExists()V
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ScheduleInfoDao;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ScheduleInfoDao;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ScheduleInfoDao;->getFirstEntity()Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "no wait jobs"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->stopNotificationServiceIfAllowed()V

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->startSchedule(Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;)V

    return-void
.end method

.method private stopNotificationServiceIfAllowed()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getEntity()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/service/actioninfo/IDMActionInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->context:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->isNone()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    :goto_0
    if-nez p0, :cond_1

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->stopService()V

    :cond_1
    return-void
.end method


# virtual methods
.method public idmSchedulerFinish()V
    .locals 4

    sget-object v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;->SCHEDULE_EVENT_SCHEDULE_FINISH:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->idmSendMessage(Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;Ljava/lang/Object;J)V

    return-void
.end method

.method public idmSendMessage(Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;Ljava/lang/Object;J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-gez v2, :cond_0

    const-string p3, "delayMillis should be nonnegative"

    invoke-static {p3}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    move-wide p3, v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Send Schedule Message : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, v2, Landroid/os/Message;->what:I

    iput-object p2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    cmp-long p1, p3, v0

    if-lez p1, :cond_1

    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v2, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public sendMessage(Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;Landroid/os/Bundle;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->sendMessage(Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;Landroid/os/Bundle;J)V

    return-void
.end method

.method public sendMessage(Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;Landroid/os/Bundle;J)V
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
