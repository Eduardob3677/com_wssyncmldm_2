.class public Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/DownloadTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final METADATA_DOWNLOAD_RETRY_COUNT:I = 0xf


# instance fields
.field private final actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

.field private final rangeRequest:Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;

.field private volatile stopRequested:Z

.field private final taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/DownloadTask;->stopRequested:Z

    iput-object p1, p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/DownloadTask;->taskId:Ljava/lang/String;

    iput-object p2, p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/DownloadTask;->rangeRequest:Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;

    new-instance p2, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p2, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/DownloadTask;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;)Lcom/idm/fotaagent/utils/rangerequest/HttpRangeRequest;
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/DownloadTask;->lambda$stopIfRunning$0(Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;)Lcom/idm/fotaagent/utils/rangerequest/HttpRangeRequest;

    move-result-object p0

    return-object p0
.end method

.method private append(Ljava/lang/String;Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;)V
    .locals 2

    :goto_0
    :try_start_0
    new-instance v0, Lcom/idm/fotaagent/utils/storage/FileManager;

    invoke-direct {v0}, Lcom/idm/fotaagent/utils/storage/FileManager;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/utils/storage/FileManager;->getMetadataFileSize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/DownloadTask;->range(J)Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;->append(Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/idm/fotaagent/utils/rangerequest/exception/HttpResponseCodeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/DownloadTask;->stopRequested:Z

    if-nez v1, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/DownloadTask;->checkRetriable(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$DownloadFailedException;

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$DownloadFailedException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method private checkRetriable(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/DownloadTask;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getDlCurrentRetryCount()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "currentRetryCount : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxRetryCount : 15"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const/16 v0, 0xf

    if-ge p0, v0, :cond_1

    invoke-static {}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;->getInstance()Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;->isDLRetriable(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$DownloadSuspendedException;

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$DownloadSuspendedException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$DownloadFailedException;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$DownloadFailedException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method private static synthetic lambda$stopIfRunning$0(Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;)Lcom/idm/fotaagent/utils/rangerequest/HttpRangeRequest;
    .locals 1

    instance-of v0, p0, Lcom/idm/fotaagent/utils/rangerequest/HttpRangeRequest;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/idm/fotaagent/utils/rangerequest/HttpRangeRequest;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private range(J)Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;
    .locals 4

    new-instance p0, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getOffset()J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getOffset()J

    move-result-wide p1

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getMetadataFileSize()J

    move-result-wide v2

    add-long/2addr v2, p1

    const-wide/16 p0, 0x1

    sub-long/2addr v2, p0

    new-instance p0, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;-><init>(JJ)V

    return-object p0
.end method


# virtual methods
.method public get()Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/DownloadTask;->taskId:Ljava/lang/String;

    iget-object v1, p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/DownloadTask;->rangeRequest:Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;

    invoke-direct {p0, v0, v1}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/DownloadTask;->append(Ljava/lang/String;Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;)V
    :try_end_0
    .catch Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$DownloadFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$DownloadSuspendedException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;->SUCCESS:Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    sget-object p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;->SUSPENDED:Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;

    return-object p0

    :goto_1
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    sget-object p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;->FAILURE:Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/DownloadTask;->get()Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$MetadataDownloadState;

    move-result-object p0

    return-object p0
.end method

.method public stopIfRunning()V
    .locals 2

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/DownloadTask;->stopRequested:Z

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/DownloadTask;->rangeRequest:Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LG2/b;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LG2/b;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LG2/b;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LG2/b;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LA2/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LA2/a;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
