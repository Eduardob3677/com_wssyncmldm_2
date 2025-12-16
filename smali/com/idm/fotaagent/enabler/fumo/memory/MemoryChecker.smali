.class abstract Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker$ForData;,
        Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker$ForCache;
    }
.end annotation


# instance fields
.field protected final actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

.field protected final fileManager:Lcom/idm/fotaagent/utils/storage/FileManager;

.field protected final installParamRepository:Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/idm/fotaagent/utils/storage/FileManager;

    invoke-direct {v0}, Lcom/idm/fotaagent/utils/storage/FileManager;-><init>()V

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker;->fileManager:Lcom/idm/fotaagent/utils/storage/FileManager;

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker;->installParamRepository:Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    return-void
.end method

.method private checkDownloadable(J)V
    .locals 4

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker;->getFreeSize()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "### need : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " but now has : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ") ... Memory INSUFFICIENT..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker;->setRequiredBytesIfNeeded(J)V

    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/exception/insufficientmemory/InsufficientMemoryToDownloadException;

    const-string p1, "Memory NOT SUFFICIENT to download"

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/exception/insufficientmemory/InsufficientMemoryToDownloadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getDeltaSize(Ljava/lang/String;)J
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker;->fileManager:Lcom/idm/fotaagent/utils/storage/FileManager;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/utils/storage/FileManager;->getDeltaFileSize(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Lcom/idm/exception/file/IDMExceptionFileNotFound; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/idm/fotaagent/enabler/fumo/exception/insufficientmemory/NotFoundDeltaFileException;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/enabler/fumo/exception/insufficientmemory/NotFoundDeltaFileException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public checkDownloadable()V
    .locals 2

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker;->getRequiredMarginForDownload()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker;->checkDownloadable(J)V

    return-void
.end method

.method public checkDownloadable(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker;->getDeltaSize(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker;->getRequiredMarginForDownload()J

    move-result-wide v2

    sub-long/2addr v2, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "needSpace : "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", dataMargin : "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker;->getRequiredMarginForDownload()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", deltaSize : "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-direct {p0, v2, v3}, Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker;->checkDownloadable(J)V

    return-void
.end method

.method public checkInstallable()V
    .locals 5

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker;->getRequiredMarginForInstall()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker;->getFreeSize()J

    move-result-wide v2

    cmp-long p0, v0, v2

    const-string v4, "### need : "

    if-gez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " now has : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") ... Memory SUFFICIENT..."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " but now has : "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ") ... Memory INSUFFICIENT..."

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/idm/fotaagent/enabler/ui/dialog/model/InsufficientMemoryDialogModel;->setRequiredBytes(J)V

    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/exception/insufficientmemory/InsufficientMemoryToInstallException;

    const-string v0, "Memory NOT SUFFICIENT to install"

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/fumo/exception/insufficientmemory/InsufficientMemoryToInstallException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract getFreeSize()J
.end method

.method public abstract getRequiredMarginForDownload()J
.end method

.method public abstract getRequiredMarginForInstall()J
.end method

.method public abstract setRequiredBytesIfNeeded(J)V
.end method
