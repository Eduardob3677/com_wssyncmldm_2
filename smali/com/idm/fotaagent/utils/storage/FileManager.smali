.class public Lcom/idm/fotaagent/utils/storage/FileManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EXCLUSION_FOR_CACHE_CLEAR:[Ljava/lang/String;

.field private static final NAME_PAYLOAD_METADATA:Ljava/lang/String; = "payload_metadata.bin"

.field static final PATH_COMMAND_FILE:Ljava/lang/String; = "/cache/recovery/command"

.field public static final PATH_FOTA_STATUS:Ljava/lang/String; = "/cache/fota/fota.status"

.field static final PATH_UNCRYPT_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"


# instance fields
.field private final fileAdapter:Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "omc"

    const-string v1, "backup"

    const-string v2, "lost+found"

    const-string v3, "recovery"

    const-string v4, "fota"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/utils/storage/FileManager;->EXCLUSION_FOR_CACHE_CLEAR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;

    invoke-direct {v0}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;-><init>()V

    iput-object v0, p0, Lcom/idm/fotaagent/utils/storage/FileManager;->fileAdapter:Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/utils/storage/FileManager;[Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/utils/storage/FileManager;->lambda$clearDirectory$1([Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/utils/storage/FileManager;->lambda$shouldExclude$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/idm/fotaagent/utils/storage/FileManager;[Ljava/lang/String;Ljava/io/File;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/utils/storage/FileManager;->lambda$clearDirectory$0([Ljava/lang/String;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private varargs clearDirectory(Ljava/io/File;[Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/idm/fotaagent/utils/storage/a;

    invoke-direct {v0, p0, p2}, Lcom/idm/fotaagent/utils/storage/a;-><init>(Lcom/idm/fotaagent/utils/storage/FileManager;[Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/a;-><init>(Ljava/lang/Object;Ljava/io/Serializable;I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private exists(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/idm/fotaagent/utils/storage/FileManager;->fileAdapter:Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;

    invoke-virtual {p0, p1}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;->idmFileExists(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/idm/exception/file/IDMExceptionFileRead; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/idm/exception/file/IDMExceptionFileNotFound; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Not exist in "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$clearDirectory$0([Ljava/lang/String;Ljava/io/File;)Z
    .locals 0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/idm/fotaagent/utils/storage/FileManager;->shouldExclude(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$clearDirectory$1([Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p1}, Lcom/idm/fotaagent/utils/storage/FileManager;->clearDirectory(Ljava/io/File;[Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "succeeded to delete : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "failed to delete : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$shouldExclude$2(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Skip deleting : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/idm/fotaagent/utils/storage/StorageType;->CACHE:Lcom/idm/fotaagent/utils/storage/StorageType;

    invoke-virtual {v1}, Lcom/idm/fotaagent/utils/storage/StorageType;->path()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/idm/fotaagent/utils/storage/FileManager;->EXCLUSION_FOR_CACHE_CLEAR:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/idm/fotaagent/utils/storage/FileManager;->clearDirectory(Ljava/io/File;[Ljava/lang/String;)V

    return-void
.end method

.method public clearCommandAndUncryptFile()V
    .locals 2

    const-string v0, "/cache/recovery/command"

    const-string v1, "/cache/recovery/uncrypt_file"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/utils/storage/FileManager;->deleteFile([Ljava/lang/String;)V

    return-void
.end method

.method public createDeltaFolder(Lcom/idm/fotaagent/utils/storage/StorageType;)Z
    .locals 2

    const-string v0, "Delta Path : "

    :try_start_0
    invoke-virtual {p1}, Lcom/idm/fotaagent/utils/storage/StorageType;->pathForFotaFolder()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/idm/fotaagent/utils/storage/FileManager;->fileAdapter:Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;

    invoke-virtual {p0, p1}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;->idmDirCreate(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/idm/exception/file/IDMExceptionFileDirCreate; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public deleteDeltaAndMetadataFiles()V
    .locals 3

    sget-object v0, Lcom/idm/fotaagent/utils/storage/StorageType;->CACHE:Lcom/idm/fotaagent/utils/storage/StorageType;

    invoke-virtual {v0}, Lcom/idm/fotaagent/utils/storage/StorageType;->pathForDeltaFile()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/idm/fotaagent/utils/storage/StorageType;->DATA:Lcom/idm/fotaagent/utils/storage/StorageType;

    invoke-virtual {v1}, Lcom/idm/fotaagent/utils/storage/StorageType;->pathForDeltaFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/storage/FileManager;->getPayloadMetadataPath()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/utils/storage/FileManager;->deleteFile([Ljava/lang/String;)V

    return-void
.end method

.method public varargs deleteFile([Ljava/lang/String;)V
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    :try_start_0
    iget-object v3, p0, Lcom/idm/fotaagent/utils/storage/FileManager;->fileAdapter:Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;

    invoke-virtual {v3, v2}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;->idmFileDelete(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "succeeded to delete file. path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/idm/exception/file/IDMExceptionFileDelete; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public deleteMetadataFile()V
    .locals 1

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/storage/FileManager;->getPayloadMetadataPath()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/utils/storage/FileManager;->deleteFile([Ljava/lang/String;)V

    return-void
.end method

.method public existsDeltaFileInCache()Z
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/utils/storage/StorageType;->CACHE:Lcom/idm/fotaagent/utils/storage/StorageType;

    invoke-virtual {v0}, Lcom/idm/fotaagent/utils/storage/StorageType;->pathForDeltaFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/utils/storage/FileManager;->exists(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public existsDeltaFileInData()Z
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/utils/storage/StorageType;->DATA:Lcom/idm/fotaagent/utils/storage/StorageType;

    invoke-virtual {v0}, Lcom/idm/fotaagent/utils/storage/StorageType;->pathForDeltaFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/utils/storage/FileManager;->exists(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public existsMetadataFile()Z
    .locals 1

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/storage/FileManager;->getPayloadMetadataPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/utils/storage/FileManager;->exists(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getAvailableBytes(I)J
    .locals 0

    :try_start_0
    new-instance p0, Landroid/os/StatFs;

    invoke-static {p1}, Lcom/idm/fotaagent/utils/storage/StorageType;->get(I)Lcom/idm/fotaagent/utils/storage/StorageType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/fotaagent/utils/storage/StorageType;->path()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getAvailableBytesAtCache()J
    .locals 2

    sget-object v0, Lcom/idm/fotaagent/utils/storage/StorageType;->CACHE:Lcom/idm/fotaagent/utils/storage/StorageType;

    invoke-virtual {v0}, Lcom/idm/fotaagent/utils/storage/StorageType;->type()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/utils/storage/FileManager;->getAvailableBytes(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAvailableBytesAtData()J
    .locals 2

    sget-object v0, Lcom/idm/fotaagent/utils/storage/StorageType;->DATA:Lcom/idm/fotaagent/utils/storage/StorageType;

    invoke-virtual {v0}, Lcom/idm/fotaagent/utils/storage/StorageType;->type()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/utils/storage/FileManager;->getAvailableBytes(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeltaFileSize(I)J
    .locals 0

    invoke-static {p1}, Lcom/idm/fotaagent/utils/storage/StorageType;->get(I)Lcom/idm/fotaagent/utils/storage/StorageType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/fotaagent/utils/storage/StorageType;->pathForDeltaFile()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/utils/storage/FileManager;->getDeltaFileSize(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getDeltaFileSize(Ljava/lang/String;)J
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/idm/fotaagent/utils/storage/FileManager;->fileAdapter:Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;

    invoke-virtual {p0, p1}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;->idmGetFileSize(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/idm/exception/file/IDMExceptionFileNotFound;

    invoke-direct {p1, p0}, Lcom/idm/exception/file/IDMExceptionFileNotFound;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getMetadataFileSize()J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/utils/storage/FileManager;->fileAdapter:Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/storage/FileManager;->getPayloadMetadataPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;->idmGetFileSize(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/idm/exception/file/IDMExceptionFileNotFound; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPayloadMetadataPath()Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/idm/fotaagent/utils/storage/StorageType;->DATA:Lcom/idm/fotaagent/utils/storage/StorageType;

    invoke-virtual {v0}, Lcom/idm/fotaagent/utils/storage/StorageType;->pathForFotaFolder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/payload_metadata.bin"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public varargs shouldExclude(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2

    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/idm/core/ddf/a;

    const/4 v0, 0x3

    invoke-direct {p2, p1, v0}, Lcom/idm/core/ddf/a;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, LA2/a;

    const/16 p2, 0x19

    invoke-direct {p1, p2}, LA2/a;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->peek(Ljava/util/function/Consumer;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
