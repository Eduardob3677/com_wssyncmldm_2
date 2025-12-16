.class public Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadInProgress;
.super Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;
.source "SourceFile"


# instance fields
.field private final nDownloadType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadInProgress;->nDownloadType:I

    return-void
.end method

.method private idmCallbackExecuteDownload()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->updateInformation(Ljava/lang/String;)V

    return-void
.end method

.method private idmCallbackExecuteDownloadAndUpdate()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->updateInformation(Ljava/lang/String;)V

    return-void
.end method

.method private resumeDownload(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;->getInstance()Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;

    move-result-object v0

    sget-object v1, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;->DOWNLOAD_RETRY_CONFIRM:Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;

    invoke-virtual {v0, v1, p1}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;->shouldShow(Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadRetryConfirm;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadRetryConfirm;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadInProgress;->idmFumoStart()V

    :goto_0
    return-void
.end method


# virtual methods
.method public checkMemoryAndStartDownloading()V
    .locals 3

    const/16 v0, 0x23

    :try_start_0
    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->taskId:Ljava/lang/String;

    sget-object v2, Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;->RESUMEABLE:Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;

    invoke-static {v1, v2}, Lcom/idm/fotaagent/abupdate/enablerinterface/MemoryHandler;->createInstance(Ljava/lang/String;Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;)Lcom/idm/fotaagent/abupdate/enablerinterface/MemoryHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/idm/fotaagent/abupdate/enablerinterface/MemoryHandler;->check()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->updateInformation(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getActionInfo()Lcom/idm/service/actioninfo/IDMActionInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/idm/fotaagent/LibraryStarter;->startDLTask(Lcom/idm/service/actioninfo/IDMActionInfo;)V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->taskId:Ljava/lang/String;

    invoke-static {v1}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo;->start(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/idm/fotaagent/enabler/fumo/exception/insufficientmemory/InsufficientMemoryException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/idm/fotaagent/enabler/fumo/exception/insufficientmemory/InvalidStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :goto_0
    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    new-instance v1, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->taskId:Ljava/lang/String;

    invoke-direct {v1, p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x8

    invoke-virtual {v1, v0, p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->executeIfPossible(II)V

    goto :goto_2

    :goto_1
    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    new-instance v1, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->taskId:Ljava/lang/String;

    invoke-direct {v1, p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x2

    invoke-virtual {v1, v0, p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->executeIfPossible(II)V

    :goto_2
    return-void
.end method

.method public getDefaultResultCode()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public idmCallbackExecute(Ljava/lang/String;)V
    .locals 1

    const-string p1, ""

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget p1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadInProgress;->nDownloadType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadInProgress;->idmCallbackExecuteDownloadAndUpdate()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadInProgress;->idmCallbackExecuteDownload()V

    :cond_1
    :goto_0
    return-void
.end method

.method public idmExecute(Ljava/lang/String;)V
    .locals 0

    const-string p1, ""

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadInProgress;->idmFumoStart()V

    return-void
.end method

.method public idmFumoStart()V
    .locals 3

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$DownloadNotAllowed;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->taskId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$DownloadNotAllowed;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Policies$ForDownload;->getExceptional()Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;

    move-result-object v1

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$DownloadNotAllowed;->act()Ljava/util/function/Consumer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$DownloadNotAllowed;->getExceptionClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;->ifThrown(Ljava/util/function/Consumer;Ljava/lang/Class;)Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;

    move-result-object v0

    new-instance v1, LD1/b;

    const/16 v2, 0x14

    invoke-direct {v1, v2, p0}, LD1/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;->orElse(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resumeByNetwork()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->taskId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadInProgress;->resumeDownload(Ljava/lang/String;)V

    return-void
.end method

.method public resumeByReboot()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->taskId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadInProgress;->resumeDownload(Ljava/lang/String;)V

    return-void
.end method

.method public updateActionInfo(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    const/16 v0, 0x1e

    invoke-virtual {p1, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setCommand(I)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setFumoStatus(I)V

    return-void
.end method
