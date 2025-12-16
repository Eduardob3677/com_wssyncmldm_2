.class public Lcom/idm/fotaagent/abupdate/abenabler/fumo/memory/ABMemoryHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/abupdate/enablerinterface/MemoryHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/abupdate/abenabler/fumo/memory/ABMemoryHandler$Installable;
    }
.end annotation


# instance fields
.field protected final actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

.field protected final taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/idm/fotaagent/abupdate/abenabler/fumo/memory/ABMemoryHandler;->taskId:Ljava/lang/String;

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/fumo/memory/ABMemoryHandler;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    return-void
.end method

.method public static get(Ljava/lang/String;Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;)Lcom/idm/fotaagent/abupdate/abenabler/fumo/memory/ABMemoryHandler;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;->INSTALLABLE:Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/idm/fotaagent/abupdate/abenabler/fumo/memory/ABMemoryHandler$Installable;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/abupdate/abenabler/fumo/memory/ABMemoryHandler$Installable;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/idm/fotaagent/abupdate/abenabler/fumo/memory/ABMemoryHandler;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/abupdate/abenabler/fumo/memory/ABMemoryHandler;-><init>(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public allocateAndCheckStorage(Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->getInstance()Lcom/idm/fotaagent/abupdate/manager/EnablerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->allocateSpaceAndGetRequiredFreeMemory(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/fumo/memory/ABMemoryHandler;->getRequiredDataMargin()J

    move-result-wide p0

    new-instance v2, Lcom/idm/fotaagent/utils/storage/FileManager;

    invoke-direct {v2}, Lcom/idm/fotaagent/utils/storage/FileManager;-><init>()V

    invoke-virtual {v2}, Lcom/idm/fotaagent/utils/storage/FileManager;->getAvailableBytesAtData()J

    move-result-wide v2

    new-instance v4, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getMetadataFileSize()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "availableBytes : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", requiredBytes : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", marginBytes : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " , metadataSize : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    add-long/2addr v0, p0

    add-long/2addr v0, v4

    cmp-long p0, v2, v0

    if-ltz p0, :cond_0

    return-void

    :cond_0
    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/idm/fotaagent/enabler/ui/dialog/model/InsufficientMemoryDialogModel;->setRequiredBytes(J)V

    new-instance p0, Lcom/idm/fotaagent/abupdate/abenabler/fumo/exception/insufficientmemory/InsufficientMemoryToAllocateException;

    const-string p1, "Memory NOT INSUFFICIENT for VAB"

    invoke-direct {p0, p1, v0, v1}, Lcom/idm/fotaagent/abupdate/abenabler/fumo/exception/insufficientmemory/InsufficientMemoryToAllocateException;-><init>(Ljava/lang/String;J)V

    throw p0

    :cond_1
    new-instance p0, Lcom/idm/fotaagent/abupdate/abenabler/fumo/exception/insufficientmemory/AllocateFailedException;

    const-string p1, "requiredBytes is negative"

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/abupdate/abenabler/fumo/exception/insufficientmemory/AllocateFailedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public check()V
    .locals 4

    invoke-static {}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;->getInstance()Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/abupdate/abenabler/fumo/memory/ABMemoryHandler;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;->download(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/idm/fotaagent/abupdate/abenabler/fumo/memory/ABMemoryHandler;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    sget-object v3, Lcom/idm/fotaagent/utils/storage/StorageType;->DATA:Lcom/idm/fotaagent/utils/storage/StorageType;

    invoke-virtual {v3}, Lcom/idm/fotaagent/utils/storage/StorageType;->type()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setDeltaIndex(I)V

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;->downloadPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/abupdate/abenabler/fumo/memory/ABMemoryHandler;->allocateAndCheckStorage(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/fumo/memory/ABMemoryHandler;->checkStorage()V

    :goto_0
    const-string p0, "available to download and install"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method

.method public checkStorage()V
    .locals 5

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/fumo/memory/ABMemoryHandler;->getRequiredDataMargin()J

    move-result-wide v0

    new-instance p0, Lcom/idm/fotaagent/utils/storage/FileManager;

    invoke-direct {p0}, Lcom/idm/fotaagent/utils/storage/FileManager;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/storage/FileManager;->getAvailableBytesAtData()J

    move-result-wide v2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "availableBytes : "

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", marginBytes : "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    cmp-long p0, v2, v0

    if-ltz p0, :cond_0

    return-void

    :cond_0
    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/idm/fotaagent/enabler/ui/dialog/model/InsufficientMemoryDialogModel;->setRequiredBytes(J)V

    new-instance p0, Lcom/idm/fotaagent/abupdate/abenabler/fumo/exception/insufficientmemory/InsufficientMemoryToAllocateException;

    const-string v2, "Memory NOT INSUFFICIENT for VAB"

    invoke-direct {p0, v2, v0, v1}, Lcom/idm/fotaagent/abupdate/abenabler/fumo/exception/insufficientmemory/InsufficientMemoryToAllocateException;-><init>(Ljava/lang/String;J)V

    throw p0
.end method

.method public getRequiredDataMargin()J
    .locals 4

    new-instance p0, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getDataMargin()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    return-wide v0
.end method
