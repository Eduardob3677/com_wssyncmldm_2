.class public Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$DownloadProgress;
.super Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadInProgress;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadProgress"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadInProgress;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic b(Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$DownloadProgress;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$DownloadProgress;->lambda$checkMemoryAndStartDownloading$0()V

    return-void
.end method

.method private synthetic lambda$checkMemoryAndStartDownloading$0()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/idm/fotaagent/abupdate/abenabler/utils/UpdateEngineWakeLockManager;->get()Lcom/idm/fotaagent/abupdate/abenabler/utils/UpdateEngineWakeLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/abenabler/utils/UpdateEngineWakeLockManager;->acquireWakeLockIfNeeded()V

    invoke-static {}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->getInstance()Lcom/idm/fotaagent/abupdate/manager/EnablerManager;

    move-result-object v0

    sget-object v1, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->PREPARING_UPDATE:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    invoke-virtual {v1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->setUpdateStatus(I)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->taskId:Ljava/lang/String;

    sget-object v1, Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;->DOWNLOADABLE:Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;

    invoke-static {v0, v1}, Lcom/idm/fotaagent/abupdate/enablerinterface/MemoryHandler;->createInstance(Ljava/lang/String;Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;)Lcom/idm/fotaagent/abupdate/enablerinterface/MemoryHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/idm/fotaagent/abupdate/enablerinterface/MemoryHandler;->check()V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->taskId:Ljava/lang/String;

    invoke-static {p0}, Lcom/idm/fotaagent/abupdate/abenabler/Executor;->access$100(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->getInstance()Lcom/idm/fotaagent/abupdate/manager/EnablerManager;

    move-result-object p0

    invoke-static {}, Lcom/idm/fotaagent/utils/network/WifiNetworkId;->getNetworkId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->resume(J)V

    goto/16 :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->getInstance()Lcom/idm/fotaagent/abupdate/manager/EnablerManager;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->IDLE:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->setUpdateStatus(I)V
    :try_end_0
    .catch Lcom/idm/fotaagent/enabler/fumo/exception/insufficientmemory/InsufficientMemoryException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/idm/fotaagent/enabler/fumo/exception/insufficientmemory/InvalidStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->getInstance()Lcom/idm/fotaagent/abupdate/manager/EnablerManager;

    move-result-object v0

    sget-object v1, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->IDLE:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    invoke-virtual {v1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->setUpdateStatus(I)V

    invoke-static {}, Lcom/idm/fotaagent/abupdate/abenabler/utils/UpdateEngineWakeLockManager;->get()Lcom/idm/fotaagent/abupdate/abenabler/utils/UpdateEngineWakeLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/abenabler/utils/UpdateEngineWakeLockManager;->releaseWakeLock()V

    instance-of v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/fumo/exception/insufficientmemory/AllocateFailedException;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/idm/fotaagent/abupdate/abenabler/fumo/exception/insufficientmemory/AllocateFailedException;

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/fumo/exception/insufficientmemory/AllocateFailedException;->getErrorCode()I

    move-result p0

    invoke-static {p0}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->of(I)Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->reportForFailureToDLDM()V

    return-void

    :cond_1
    instance-of v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$DownloadFailedException;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "No space left on device"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->NOT_ENOUGH_SPACE:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->reportForFailureToDLDM()V

    return-void

    :cond_2
    sget-object p0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->METADATA_DOWNLOAD_FAILED:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->reportForFailureToDLDM()V

    return-void

    :cond_3
    instance-of v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$DownloadSuspendedException;

    if-eqz v0, :cond_4

    return-void

    :cond_4
    instance-of p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$AlreadyDownloadingException;

    if-eqz p0, :cond_5

    return-void

    :cond_5
    sget-object p0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->reportForFailureToDLDM()V

    goto :goto_2

    :goto_1
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->getInstance()Lcom/idm/fotaagent/abupdate/manager/EnablerManager;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->IDLE:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->setUpdateStatus(I)V

    invoke-static {}, Lcom/idm/fotaagent/abupdate/abenabler/utils/UpdateEngineWakeLockManager;->get()Lcom/idm/fotaagent/abupdate/abenabler/utils/UpdateEngineWakeLockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/utils/UpdateEngineWakeLockManager;->releaseWakeLock()V

    sget-object p0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->NOT_ENOUGH_SPACE:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->reportForFailureToDLDM()V

    :goto_2
    return-void
.end method

.method private resumeUpdate()V
    .locals 3

    invoke-static {}, Lcom/idm/fotaagent/abupdate/abenabler/Executor;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;->getInstance()Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;

    move-result-object v0

    sget-object v1, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;->DOWNLOAD_RETRY_CONFIRM:Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;->shouldShow(Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadRetryConfirm;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->taskId:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadRetryConfirm;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadInProgress;->idmFumoStart()V

    return-void
.end method


# virtual methods
.method public checkMemoryAndStartDownloading()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->updateInformation(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->taskId:Ljava/lang/String;

    invoke-static {v0}, Lcom/idm/fotaagent/abupdate/abenabler/Executor;->access$000(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadInProgress;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->taskId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadInProgress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LD1/b;

    const/16 v2, 0xf

    invoke-direct {v1, v2, p0}, LD1/b;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public resumeByBattery()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$DownloadProgress;->resumeUpdate()V

    return-void
.end method

.method public resumeByReboot()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$DownloadProgress;->resumeUpdate()V

    return-void
.end method
