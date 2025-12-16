.class public Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFinishAndExecute;
.super Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;
.source "SourceFile"


# instance fields
.field private final fileManager:Lcom/idm/fotaagent/utils/storage/FileManager;

.field private final fotaJobRepository:Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

.field private final nDownloadType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFinishAndExecute;->fotaJobRepository:Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    iput p2, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFinishAndExecute;->nDownloadType:I

    new-instance p1, Lcom/idm/fotaagent/utils/storage/FileManager;

    invoke-direct {p1}, Lcom/idm/fotaagent/utils/storage/FileManager;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFinishAndExecute;->fileManager:Lcom/idm/fotaagent/utils/storage/FileManager;

    return-void
.end method

.method public static synthetic b(Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFinishAndExecute;Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFinishAndExecute;->lambda$overrideFumoExtIfMatches$0(Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;Ljava/lang/String;)V

    return-void
.end method

.method private clearActionInfoPartially()V
    .locals 5

    const-string v0, ""

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->idmGetEnablerDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    :try_start_0
    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v1, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setDownloadDescriptorUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v1, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setObjectUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v1, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setInstallNotifyURI(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setDlReportCode(I)V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setObjectSize(J)V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v1, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setDownloadType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v1, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setReportUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v1, v2}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setDeltaIndex(I)V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v1, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setDescription(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v1, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setDmResultCode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v1, v2}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setDlCurrentRetryCount(I)V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v1, v2}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setDmTotalRetryCount(I)V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v1, v2}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setDlTotalRetryCount(I)V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v1, v2}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setSuCancel(Z)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setDownloadPath(Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->idmGetEnablerDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->idmGetEnablerDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    const-string p0, "finished clearing actionInfo partially"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :goto_2
    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->idmGetEnablerDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p0
.end method

.method private extractFumoXNodeFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string p0, ""

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const-string v0, "/DownloadAndUpdate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "/Download"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string v0, "/Update"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "FumoXNode : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-object p0
.end method

.method private idmCallbackExecuteDownload()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFinishAndExecute;->saveDataAndExecuteFumoStart()V

    return-void
.end method

.method private idmCallbackExecuteDownloadAndUpdate()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFinishAndExecute;->saveDataAndExecuteFumoStart()V

    return-void
.end method

.method private idmCallbackExecuteUpdate()V
    .locals 5

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->updateInformation(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getDeltaIndex()I

    move-result v1

    sget-object v2, Lcom/idm/fotaagent/utils/storage/StorageType;->CACHE:Lcom/idm/fotaagent/utils/storage/StorageType;

    invoke-virtual {v2}, Lcom/idm/fotaagent/utils/storage/StorageType;->type()I

    move-result v2

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/idm/fotaagent/utils/storage/StorageType;->DATA:Lcom/idm/fotaagent/utils/storage/StorageType;

    invoke-virtual {v2}, Lcom/idm/fotaagent/utils/storage/StorageType;->type()I

    move-result v2

    if-eq v1, v2, :cond_0

    const-string v0, "Directory is neither /cache nor /data. Delta file doesn\'t exist"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFinishAndExecute;->reportToUpdateFailure()V

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFinishAndExecute;->fileManager:Lcom/idm/fotaagent/utils/storage/FileManager;

    invoke-virtual {v2, v1}, Lcom/idm/fotaagent/utils/storage/FileManager;->getDeltaFileSize(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    const-string v0, "File size is 0"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFinishAndExecute;->reportToUpdateFailure()V
    :try_end_0
    .catch Lcom/idm/exception/file/IDMExceptionFileNotFound; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    iget-object v3, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v3, v1, v2}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setObjectSize(J)V

    new-instance v1, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->taskId:Ljava/lang/String;

    invoke-direct {v1, p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x32

    invoke-virtual {v1, p0, v0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->executeIfPossible(ILjava/lang/String;)V

    return-void

    :catch_0
    const-string v0, "IDMExceptionFileNotFound fail"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    const-string v0, "There is no dir/file. Delta file doesn\'t exist"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFinishAndExecute;->reportToUpdateFailure()V

    return-void
.end method

.method private synthetic lambda$overrideFumoExtIfMatches$0(Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;Ljava/lang/String;)V
    .locals 3

    const-string p2, "DM Notification TLV fields override values in SyncML"

    invoke-static {p2}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {p2}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getInitType()I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Wrong initType: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getInitType()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p2, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;->installType()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/enabler/fumo/executor/b;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/idm/fotaagent/enabler/fumo/executor/b;-><init>(Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;->installPostponeType()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/enabler/fumo/executor/b;

    const/4 v2, 0x1

    invoke-direct {v1, p2, v2}, Lcom/idm/fotaagent/enabler/fumo/executor/b;-><init>(Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;->updateType()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/enabler/fumo/executor/b;

    const/4 v2, 0x2

    invoke-direct {v1, p2, v2}, Lcom/idm/fotaagent/enabler/fumo/executor/b;-><init>(Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;->serviceType()Ljava/util/Optional;

    move-result-object v0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFinishAndExecute;->fotaJobRepository:Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, LC2/c;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, LC2/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;->downloadType()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/idm/fotaagent/enabler/fumo/executor/b;

    const/4 v0, 0x3

    invoke-direct {p1, p2, v0}, Lcom/idm/fotaagent/enabler/fumo/executor/b;-><init>(Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private reportToUpdateFailure()V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->taskId:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x50

    const-string v1, "410"

    invoke-virtual {v0, p0, v1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->executeIfPossible(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clearDataIfContinuousUpdate()V
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getIsContinuousUpdateSession()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->context:Landroid/content/Context;

    sget-object v1, Lcom/idm/fotaagent/receiver/callback/updateresult/ReportStatus;->REPORT_SUCCESS:Lcom/idm/fotaagent/receiver/callback/updateresult/ReportStatus;

    invoke-static {v0, v1}, Lcom/idm/fotaagent/receiver/callback/updateresult/ReportResultLogger;->addStatusIfNeeded(Landroid/content/Context;Lcom/idm/fotaagent/receiver/callback/updateresult/ReportStatus;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getDmResultCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/idm/fotaagent/receiver/callback/updateresult/ReportResultLogger;->send(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFinishAndExecute;->clearActionInfoPartially()V

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->clear()V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFinishAndExecute;->fotaJobRepository:Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->deleteAll()I

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

    iget-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFinishAndExecute;->fileManager:Lcom/idm/fotaagent/utils/storage/FileManager;

    invoke-virtual {p1}, Lcom/idm/fotaagent/utils/storage/FileManager;->deleteDeltaAndMetadataFiles()V

    new-instance p1, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;->clearInitialUpdate()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFinishAndExecute;->clearDataIfContinuousUpdate()V

    iget-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFinishAndExecute;->fotaJobRepository:Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->resetUpdateInfo()V

    iget p1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFinishAndExecute;->nDownloadType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFinishAndExecute;->idmCallbackExecuteDownloadAndUpdate()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFinishAndExecute;->idmCallbackExecuteDownload()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFinishAndExecute;->idmCallbackExecuteUpdate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public idmExecute(Ljava/lang/String;)V
    .locals 0

    const-string p0, ""

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method

.method public idmFumoStart()V
    .locals 0

    const-string p0, ""

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method

.method public overrideFumoExtIfMatches()V
    .locals 5

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;->sessionId()Ljava/util/Optional;

    move-result-object v1

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->taskId:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/idm/core/ddf/a;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4}, Lcom/idm/core/ddf/a;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/idm/fotaagent/enabler/fumo/executor/a;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, Lcom/idm/fotaagent/enabler/fumo/executor/a;-><init>(Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public resumeByNetwork()V
    .locals 0

    const-string p0, ""

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method

.method public resumeByReboot()V
    .locals 0

    const-string p0, ""

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method

.method public saveDataAndExecuteFumoStart()V
    .locals 4

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getExecInfo(Ljava/lang/String;)Lcom/idm/agent/dm/IDMDmExecInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "execInfo should not be null; do not start FUMO"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/idm/agent/dm/IDMDmExecInfo;->idmGetPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFinishAndExecute;->extractFumoXNodeFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->idmGetMoDatabaseManager()Lcom/idm/providers/mo/IDMMoDatabaseManager;

    move-result-object v2

    iget-object v3, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v3}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoSetFumoXnodeInfo(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/agent/dm/IDMDmExecInfo;->idmGetData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFinishAndExecute;->updateServiceTypeIfExists(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFinishAndExecute;->overrideFumoExtIfMatches()V

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->taskId:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;-><init>(Ljava/lang/String;)V

    const/16 p0, 0xa

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->executeIfPossible(ILjava/lang/String;)V

    return-void
.end method

.method public updateActionInfo(Ljava/lang/String;)V
    .locals 2

    iget p1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFinishAndExecute;->nDownloadType:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object p1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->taskId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getExecInfo(Ljava/lang/String;)Lcom/idm/agent/dm/IDMDmExecInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {p1}, Lcom/idm/agent/dm/IDMDmExecInfo;->idmGetPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setReportUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/agent/dm/IDMDmExecInfo;->idmGetCorrelator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {p1}, Lcom/idm/agent/dm/IDMDmExecInfo;->idmGetCorrelator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setCorrelator(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFinishAndExecute;->fileManager:Lcom/idm/fotaagent/utils/storage/FileManager;

    invoke-virtual {p1}, Lcom/idm/fotaagent/utils/storage/FileManager;->existsDeltaFileInCache()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Delta file exist [cache]"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    sget-object p1, Lcom/idm/fotaagent/utils/storage/StorageType;->CACHE:Lcom/idm/fotaagent/utils/storage/StorageType;

    invoke-virtual {p1}, Lcom/idm/fotaagent/utils/storage/StorageType;->type()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setDeltaIndex(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFinishAndExecute;->fileManager:Lcom/idm/fotaagent/utils/storage/FileManager;

    invoke-virtual {p1}, Lcom/idm/fotaagent/utils/storage/FileManager;->existsDeltaFileInData()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Delta file exist [interior]"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    sget-object p1, Lcom/idm/fotaagent/utils/storage/StorageType;->DATA:Lcom/idm/fotaagent/utils/storage/StorageType;

    invoke-virtual {p1}, Lcom/idm/fotaagent/utils/storage/StorageType;->type()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setDeltaIndex(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateServiceTypeIfExists(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFinishAndExecute;->fotaJobRepository:Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-static {p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;->of(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->setServiceType(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
