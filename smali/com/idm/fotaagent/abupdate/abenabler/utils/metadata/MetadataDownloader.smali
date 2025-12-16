.class public Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$InstanceLazyHolder;,
        Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;,
        Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$DownloadFailedException;,
        Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$AlreadyDownloadingException;,
        Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$DownloadSuspendedException;
    }
.end annotation


# static fields
.field private static final downloading:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;->downloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p0, ""

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;-><init>()V

    return-void
.end method

.method private changePermissionTo644()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;->downloadPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0, v0}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;

    return-void
.end method

.method private deinitialize()V
    .locals 1

    sget-object p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;->downloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/adapter/NetworkApnManager;->get()Lcom/idm/fotaagent/enabler/adapter/NetworkApnManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/adapter/NetworkApnManager;->close()V

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$InstanceLazyHolder;->INSTANCE:Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;

    return-object v0
.end method

.method private initialize()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getDataSimSlotId(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Lcom/wssyncmldm/Flavor$Apn;->usesConfiguredApn(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/idm/fotaagent/enabler/adapter/NetworkApnManager;->get()Lcom/idm/fotaagent/enabler/adapter/NetworkApnManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/adapter/NetworkApnManager;->open()V

    :cond_0
    const/16 p0, 0xb58

    invoke-static {p0}, Landroid/net/TrafficStats;->setThreadStatsUid(I)V

    return-void
.end method

.method private url(Ljava/lang/String;)Ljava/net/URL;
    .locals 1

    new-instance p0, Ljava/net/URL;

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getObjectUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private urlWithParam(Ljava/lang/String;)Ljava/net/URL;
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getObjectUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/utils/GeneralUtils;->appendExtraParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public download(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "metadataDownloadState : "

    new-instance v1, Lcom/idm/fotaagent/utils/storage/FileManager;

    invoke-direct {v1}, Lcom/idm/fotaagent/utils/storage/FileManager;-><init>()V

    invoke-virtual {v1}, Lcom/idm/fotaagent/utils/storage/FileManager;->existsMetadataFile()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/idm/fotaagent/utils/storage/FileManager;->getMetadataFileSize()J

    move-result-wide v1

    new-instance v4, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getMetadataFileSize()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-nez v1, :cond_0

    const-string p0, "metadata file already exists"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v3

    :cond_0
    sget-object v1, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;->downloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;->initialize()V

    new-instance v3, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/TimeoutTask;

    invoke-direct {v3}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/TimeoutTask;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v4, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/DownloadTask;

    invoke-virtual {p0, p1, v3}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;->rangeRequest(Ljava/lang/String;Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$OnFileLengthChangedListener;)Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/DownloadTask;-><init>(Ljava/lang/String;Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v4}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    invoke-static {v3}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->anyOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;->throwIfNeeded()V

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;->changePermissionTo644()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LA2/a;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LA2/a;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LA2/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LA2/a;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;->deinitialize()V

    return v2

    :catchall_0
    move-exception p1

    :goto_0
    move-object v1, v3

    goto :goto_3

    :catch_0
    move-exception p1

    :goto_1
    move-object v1, v3

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v4, v1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v4, v1

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object v4, v1

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v4, v1

    :goto_2
    :try_start_3
    new-instance v0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$DownloadFailedException;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$DownloadFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p1

    :goto_3
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LA2/a;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, LA2/a;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LA2/a;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, LA2/a;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;->deinitialize()V

    throw p1

    :cond_1
    new-instance p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$AlreadyDownloadingException;

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$AlreadyDownloadingException;-><init>()V

    throw p0
.end method

.method public downloadPath()Ljava/nio/file/Path;
    .locals 1

    new-instance p0, Ljava/io/File;

    new-instance v0, Lcom/idm/fotaagent/utils/storage/FileManager;

    invoke-direct {v0}, Lcom/idm/fotaagent/utils/storage/FileManager;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/utils/storage/FileManager;->getPayloadMetadataPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public rangeRequest(Ljava/lang/String;Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$OnFileLengthChangedListener;)Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->isTriggeredBySideload()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Lcom/idm/fotaagent/utils/rangerequest/FileRangeRequest;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;->url(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;->downloadPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lcom/idm/fotaagent/utils/rangerequest/FileRangeRequest;-><init>(Ljava/net/URL;Ljava/nio/file/Path;)V

    return-object p2

    :cond_0
    new-instance v0, Lcom/idm/fotaagent/utils/rangerequest/HttpRangeRequest;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;->urlWithParam(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;->downloadPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-direct {v0, p1, p0, p2}, Lcom/idm/fotaagent/utils/rangerequest/HttpRangeRequest;-><init>(Ljava/net/URL;Ljava/nio/file/Path;Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$OnFileLengthChangedListener;)V

    return-object v0
.end method
