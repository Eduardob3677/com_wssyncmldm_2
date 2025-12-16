.class public Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentNetworkResume;
.super Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor$AbstractIntentResumeExecutor;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor$AbstractIntentResumeExecutor;-><init>()V

    return-void
.end method

.method private resetWifiSettingPostpone()V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    iget-object v1, p0, Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor$AbstractIntentResumeExecutor;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->isWifiSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor$AbstractIntentResumeExecutor;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/idm/fotaagent/utils/NetworkUtil;->isWiFiNetworkConnected(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeManager;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public doResume(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doResume Network taskId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentNetworkResume;->resetWifiSettingPostpone()V

    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getFumoStatus()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->resumeByNetworkIfPossible(I)V

    return-void
.end method
