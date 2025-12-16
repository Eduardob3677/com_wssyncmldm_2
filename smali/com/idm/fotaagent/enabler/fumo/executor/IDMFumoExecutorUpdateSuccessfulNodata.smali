.class public Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorUpdateSuccessfulNodata;
.super Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDefaultResultCode()Ljava/lang/String;
    .locals 0

    const-string p0, "200"

    return-object p0
.end method

.method public idmCallbackExecute(Ljava/lang/String;)V
    .locals 0

    const-string p0, ""

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method

.method public idmExecute(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->updateInformation(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorUpdateSuccessfulNodata;->idmFumoStart()V

    return-void
.end method

.method public idmFumoStart()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getActionInfo()Lcom/idm/service/actioninfo/IDMActionInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/fotaagent/LibraryStarter;->startDMTask(Lcom/idm/service/actioninfo/IDMActionInfo;)V

    return-void
.end method

.method public resumeByNetwork()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorUpdateSuccessfulNodata;->idmFumoStart()V

    return-void
.end method

.method public resumeByReboot()V
    .locals 2

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setIsContinuousUpdateSession(Z)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorUpdateSuccessfulNodata;->idmFumoStart()V

    return-void
.end method

.method public updateActionInfo(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setAppId(I)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setCommand(I)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setFumoStatus(I)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setDmResultCode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
