.class public Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$Downloadable;
.super Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Downloadable"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public check()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$Downloadable;->checkAvailableInCache()V
    :try_end_0
    .catch Lcom/idm/fotaagent/enabler/fumo/exception/insufficientmemory/InsufficientMemoryException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/idm/fotaagent/enabler/fumo/exception/insufficientmemory/InvalidStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$Downloadable;->checkAvailableInData()V

    :goto_0
    return-void
.end method

.method public checkAvailableInCache()V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker$ForCache;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler;->taskId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker$ForCache;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker;->checkDownloadable()V
    :try_end_0
    .catch Lcom/idm/fotaagent/enabler/fumo/exception/insufficientmemory/InsufficientMemoryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CacheMemoryPath : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/idm/fotaagent/utils/storage/StorageType;->CACHE:Lcom/idm/fotaagent/utils/storage/StorageType;

    invoke-virtual {v2}, Lcom/idm/fotaagent/utils/storage/StorageType;->pathForFotaFolder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler;->fileManager:Lcom/idm/fotaagent/utils/storage/FileManager;

    invoke-virtual {v1}, Lcom/idm/fotaagent/utils/storage/FileManager;->clearCache()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker;->checkDownloadable()V

    :goto_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    sget-object v1, Lcom/idm/fotaagent/utils/storage/StorageType;->CACHE:Lcom/idm/fotaagent/utils/storage/StorageType;

    invoke-virtual {v1}, Lcom/idm/fotaagent/utils/storage/StorageType;->type()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setDeltaIndex(I)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v1}, Lcom/idm/fotaagent/utils/storage/StorageType;->pathForDeltaFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setDownloadPath(Ljava/lang/String;)V

    const-string p0, "Download at Cache Memory >>> IDMDB_FS_OK..."

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method

.method public checkAvailableInData()V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker$ForData;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler;->taskId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker$ForData;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker;->checkDownloadable()V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    sget-object v1, Lcom/idm/fotaagent/utils/storage/StorageType;->DATA:Lcom/idm/fotaagent/utils/storage/StorageType;

    invoke-virtual {v1}, Lcom/idm/fotaagent/utils/storage/StorageType;->type()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setDeltaIndex(I)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v1}, Lcom/idm/fotaagent/utils/storage/StorageType;->pathForDeltaFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setDownloadPath(Ljava/lang/String;)V

    const-string v0, "Download at Interior memory >>> IDMDB_FS_OK..."

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getDeltaIndex()I

    move-result v0

    invoke-static {v0}, Lcom/idm/fotaagent/utils/storage/StorageType;->get(I)Lcom/idm/fotaagent/utils/storage/StorageType;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "storageType : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler;->fileManager:Lcom/idm/fotaagent/utils/storage/FileManager;

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/utils/storage/FileManager;->createDeltaFolder(Lcom/idm/fotaagent/utils/storage/StorageType;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/exception/insufficientmemory/FolderCreateFailException;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/exception/insufficientmemory/FolderCreateFailException;-><init>()V

    throw p0
.end method
