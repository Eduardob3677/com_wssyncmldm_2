.class public Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadInCancel;
.super Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;
.source "SourceFile"


# instance fields
.field private final nDownloadType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadInCancel;->nDownloadType:I

    return-void
.end method

.method private idmCallbackExecuteDownload()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    const/16 v0, 0xe6

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setFumoStatus(I)V

    return-void
.end method

.method private idmCallbackExecuteDownloadAndUpdate()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    const/16 v0, 0xe6

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setFumoStatus(I)V

    return-void
.end method


# virtual methods
.method public getDefaultResultCode()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x3

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public idmCallbackExecute(Ljava/lang/String;)V
    .locals 1

    const-string p1, ""

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget p1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadInCancel;->nDownloadType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadInCancel;->idmCallbackExecuteDownloadAndUpdate()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadInCancel;->idmCallbackExecuteDownload()V

    :cond_1
    :goto_0
    return-void
.end method

.method public idmExecute(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->updateInformation(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadInCancel;->idmFumoStart()V

    return-void
.end method

.method public idmFumoStart()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getActionInfo()Lcom/idm/service/actioninfo/IDMActionInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/fotaagent/LibraryStarter;->startDLTask(Lcom/idm/service/actioninfo/IDMActionInfo;)V

    return-void
.end method

.method public resumeByNetwork()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadInCancel;->idmFumoStart()V

    return-void
.end method

.method public resumeByReboot()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadInCancel;->idmFumoStart()V

    return-void
.end method

.method public updateActionInfo(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setAppId(I)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    const/16 v1, 0xe6

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setCommand(I)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setFumoStatus(I)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadInCancel;->getDefaultResultCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/idm/fotaagent/utils/GeneralUtils;->parseInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setDlReportCode(I)V

    :cond_0
    return-void
.end method
