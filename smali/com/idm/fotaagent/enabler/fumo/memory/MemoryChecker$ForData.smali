.class Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker$ForData;
.super Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForData"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getFreeSize()J
    .locals 2

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker;->fileManager:Lcom/idm/fotaagent/utils/storage/FileManager;

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/storage/FileManager;->getAvailableBytesAtData()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequiredMarginForDownload()J
    .locals 7

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker;->installParamRepository:Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getDataMargin()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getObjectSize()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v6, "### Download at Data - max(delta size: "

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", needSpace:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "), result : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-wide v4
.end method

.method public getRequiredMarginForInstall()J
    .locals 5

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker;->installParamRepository:Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getDataMargin()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v2}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getObjectSize()J

    move-result-wide v2

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getDeltaIndex()I

    move-result p0

    sget-object v4, Lcom/idm/fotaagent/utils/storage/StorageType;->DATA:Lcom/idm/fotaagent/utils/storage/StorageType;

    invoke-virtual {v4}, Lcom/idm/fotaagent/utils/storage/StorageType;->type()I

    move-result v4

    if-ne p0, v4, :cond_1

    cmp-long p0, v2, v0

    if-ltz p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    sub-long/2addr v0, v2

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "### Need free space for install : "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-wide v0
.end method

.method public setRequiredBytesIfNeeded(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/idm/fotaagent/enabler/ui/dialog/model/InsufficientMemoryDialogModel;->setRequiredBytes(J)V

    return-void
.end method
