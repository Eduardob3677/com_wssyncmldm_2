.class public Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentBootResume;
.super Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor$AbstractIntentResumeExecutor;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor$AbstractIntentResumeExecutor;-><init>()V

    return-void
.end method

.method private isMerge(I)Z
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->isABModel()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->getInstance()Lcom/idm/fotaagent/abupdate/manager/EnablerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->getUpdateEngineStatus()Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->CLEANUP_PREVIOUS_UPDATE:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    if-ne p0, v0, :cond_0

    const/16 p0, 0x3c

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private report(Ljava/lang/String;I)V
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;-><init>(Ljava/lang/String;)V

    const/16 p1, 0xa

    if-ne p2, p1, :cond_0

    const/16 p1, 0xf0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->executeIfPossible(ILjava/lang/String;)V

    return-void

    :cond_0
    const/16 p1, 0xe6

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->executeIfPossible(II)V

    return-void
.end method


# virtual methods
.method public doResume(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "taskId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getFumoStatus()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentBootResume;->isUpdatedBySmartSwitchDuringFOTASession(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "updated by SmartSwitch"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v1}, Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentBootResume;->report(Ljava/lang/String;I)V

    return-void

    :cond_0
    new-instance v2, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    iget-object v3, p0, Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor$AbstractIntentResumeExecutor;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->isNone()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->isReportFumoStatus()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->isUpdatingFumoStatus()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->postponeType()Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeManager;->restart(Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->getEnablerFactory()Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;->getLibraryUtils()Lcom/idm/fotaagent/utils/LibraryUtils;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/idm/fotaagent/utils/LibraryUtils;->isTaskRunning(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v1}, Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentBootResume;->isMerge(I)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "Task is running; DO NOT resume"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getExecInfo(Ljava/lang/String;)Lcom/idm/agent/dm/IDMDmExecInfo;

    move-result-object p0

    if-nez p0, :cond_3

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->reset()V

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->deleteEntity(Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->isWifiSetting()Z

    move-result p0

    if-nez p0, :cond_4

    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->resumeByBootCompleteIfPossible(I)V

    :cond_4
    return-void
.end method

.method public isUpdatedBySmartSwitchDuringFOTASession(ILjava/lang/String;)Z
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0, p2}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->isTriggeredBySideload()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    :cond_0
    new-instance p2, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;

    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor$AbstractIntentResumeExecutor;->context:Landroid/content/Context;

    invoke-direct {p2, p0}, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;->getPreviousFirmwareVersion()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->readFirmwareVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/16 p0, 0x3c

    if-eq p1, p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method
