.class public Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;
    }
.end annotation


# instance fields
.field private final actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

.field private final fotaJobRepository:Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

.field private final taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel;->taskId:Ljava/lang/String;

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    new-instance p1, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel;->fotaJobRepository:Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    return-void
.end method

.method public static synthetic a(Landroid/app/job/JobScheduler;)Landroid/app/job/JobInfo;
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel;->lambda$getScheduledExpirationTime$0(Landroid/app/job/JobScheduler;)Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Landroid/content/Context;)J
    .locals 2

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel;->getScheduledExpirationTime(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic b(Landroid/app/job/JobInfo;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel;->lambda$getScheduledExpirationTime$1(Landroid/app/job/JobInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFumoStatus()I
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getFumoStatus()I

    move-result p0

    return p0
.end method

.method private static getScheduledExpirationTime(Landroid/content/Context;)J
    .locals 2

    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LG2/b;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, LG2/b;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LG2/b;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, LG2/b;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/h;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/h;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private getTaskId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel;->taskId:Ljava/lang/String;

    return-object p0
.end method

.method private isEmergencyServiceType()Z
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel;->fotaJobRepository:Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->isEmergencyService()Z

    move-result p0

    return p0
.end method

.method private isExpirationNotify()Z
    .locals 4

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->getExpirationNotify()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel;->getScheduledExpirationTime(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getScheduledExpirationTime$0(Landroid/app/job/JobScheduler;)Landroid/app/job/JobInfo;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;->EXPIRATION_CANCEL:Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;->getJobId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getScheduledExpirationTime$1(Landroid/app/job/JobInfo;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    const-string v0, "SCHEDULEDTIME"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public downloadOrPause()V
    .locals 6

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel;->getFumoStatus()I

    move-result v0

    const-string v1, "0009"

    const/16 v2, 0x1e

    const-string v3, "020"

    const/16 v4, 0xf2

    const/4 v5, 0x0

    if-eq v0, v2, :cond_1

    if-eq v0, v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected FumoStatus : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel;->getFumoStatus()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    invoke-static {v3, v1, v5}, Lcom/idm/fotaagent/analytics/samsunganalytics/SALogging;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel;->getTaskId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->executeIfPossible(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "Download restart!!"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const-string v0, "0070"

    invoke-static {v3, v0, v5}, Lcom/idm/fotaagent/analytics/samsunganalytics/SALogging;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel;->getTaskId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v5}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->executeIfPossible(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Download pause!!"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {v3, v1, v5}, Lcom/idm/fotaagent/analytics/samsunganalytics/SALogging;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel;->getTaskId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->executeIfPossible(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getTitleBodyAndButtons()Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel;->isEmergencyServiceType()Z

    move-result v0

    const/16 v1, 0x1e

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel;->getFumoStatus()I

    move-result v0

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unexpected fumo status: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel;->getFumoStatus()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    :cond_0
    sget-object p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;->DOWNLOADING_EMERGENCY:Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;

    return-object p0

    :cond_1
    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel;->getFumoStatus()I

    move-result v0

    if-eq v0, v1, :cond_4

    const/16 v1, 0xf2

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected FumoStatus : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel;->getFumoStatus()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    sget-object p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;->PAUSE:Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;

    return-object p0

    :cond_2
    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel;->isExpirationNotify()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;->PAUSE_EXPIRATION:Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;->PAUSE:Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;

    :goto_0
    return-object p0

    :cond_4
    sget-object p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;->DOWNLOADING:Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;

    return-object p0
.end method

.method public restoreLastInformation()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/idm/fotaagent/utils/storage/FileManager;

    invoke-direct {v0}, Lcom/idm/fotaagent/utils/storage/FileManager;-><init>()V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getDeltaIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/utils/storage/FileManager;->getDeltaFileSize(I)J

    move-result-wide v0
    :try_end_0
    .catch Lcom/idm/exception/file/IDMExceptionFileNotFound; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "IDMExceptionFileNotFound fail"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    :goto_0
    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v2}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getObjectSize()J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo;->setPercent(I)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel;->fotaJobRepository:Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->remainedDownloadTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo;->setFormattedRemainTime(J)V

    return-void
.end method
