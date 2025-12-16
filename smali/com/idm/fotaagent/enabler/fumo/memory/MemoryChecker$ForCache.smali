.class Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker$ForCache;
.super Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForCache"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkInstallable()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public getFreeSize()J
    .locals 2

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker;->fileManager:Lcom/idm/fotaagent/utils/storage/FileManager;

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/storage/FileManager;->getAvailableBytesAtCache()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequiredMarginForDownload()J
    .locals 7

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getObjectSize()J

    move-result-wide v0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/memory/MemoryChecker;->installParamRepository:Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getCacheMargin()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    add-long v4, v0, v2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v6, "Cache - delta size : "

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", cache margin : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", sum : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-wide v4
.end method

.method public getRequiredMarginForInstall()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public setRequiredBytesIfNeeded(J)V
    .locals 0

    return-void
.end method
