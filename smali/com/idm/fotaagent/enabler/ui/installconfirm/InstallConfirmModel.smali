.class public Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final context:Landroid/content/Context;

.field private final fumoInstallHandler:Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;

.field private final installPolicy:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;

.field private final moFumoExtDao:Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;

.field private final taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->context:Landroid/content/Context;

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->taskId:Ljava/lang/String;

    new-instance v1, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;

    new-instance v2, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v2, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->moFumoExtDao:Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->getEnablerFactory()Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;->getInstallHandler(Landroid/content/Context;Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->fumoInstallHandler:Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->get(Landroid/content/Context;)Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->installPolicy:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;

    return-void
.end method

.method public static synthetic a(Landroid/app/job/JobScheduler;)Landroid/app/job/JobInfo;
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->lambda$getExpirationTimeString$0(Landroid/app/job/JobScheduler;)Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/app/job/JobInfo;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->lambda$getExpirationTimeString$1(Landroid/app/job/JobInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getExpirationTimeString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-class p0, Landroid/app/job/JobScheduler;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LG2/b;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, LG2/b;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LG2/b;

    const/16 v1, 0x1d

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

    new-instance p0, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->getExpirationNotify()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const p0, 0x7f13002a

    invoke-static {v0, v1, p0, p1}, Lcom/idm/fotaagent/utils/Formatted$Android;->longDateWeekDayAndTime(JILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getInstallConfirmBody()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->get()Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;

    move-result-object v1

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->getInstallConfirmBody(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->context:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->getExpirationTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->context:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->getExpirationTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getScreenId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->FOR_WHATS_NEW:Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->context:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->isMajorUpdate(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "012"

    goto :goto_0

    :cond_0
    const-string p0, "013"

    :goto_0
    return-object p0
.end method

.method private static synthetic lambda$getExpirationTimeString$0(Landroid/app/job/JobScheduler;)Landroid/app/job/JobInfo;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;->EXPIRATION_CANCEL:Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;->getJobId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getExpirationTimeString$1(Landroid/app/job/JobInfo;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    const-string v0, "SCHEDULEDTIME"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getHighEmphasisButtonTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->context:Landroid/content/Context;

    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->get()Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->getInstallConfirmHighEmphasisButtonTitleId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMainBody()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->installPolicy:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->isAlreadyScheduled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->scheduledInstallTime()J

    move-result-wide v0

    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->get()Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->getScheduleInstallMessageId()I

    move-result v2

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->context:Landroid/content/Context;

    invoke-static {v0, v1, v2, p0}, Lcom/idm/fotaagent/utils/Formatted$Android;->longDateWeekDayAndTime(JILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->getInstallConfirmBody()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMainBody(I)Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->get()Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->getRestartCountDownMessageId()I

    move-result v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMainTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->moFumoExtDao:Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->getUpdateType()Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UpdateType;

    move-result-object v0

    sget-object v1, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UpdateType;->Important:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UpdateType;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->context:Landroid/content/Context;

    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->get()Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->getInstallConfirmImportantTitleId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->context:Landroid/content/Context;

    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->get()Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->getInstallConfirmTitleId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMediumEmphasisButtonTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->installPolicy:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->removesMediumEmphasisButton(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->context:Landroid/content/Context;

    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->get()Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->getInstallConfirmMediumEmphasisButtonTitleId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->taskId:Ljava/lang/String;

    return-object p0
.end method

.method public scheduleInstallOneDayLater()V
    .locals 4

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install$ScheduleForce;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install$ScheduleForce;-><init>()V

    sget-object v1, Lcom/idm/fotaagent/utils/EpochTime;->DAY_1_LATER:Lcom/idm/fotaagent/utils/EpochTime;

    invoke-virtual {v1}, Lcom/idm/fotaagent/utils/EpochTime;->toMillis()J

    move-result-wide v1

    sget-object v3, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;->BY_EMERGENCY_CALL:Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->taskId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeManager;->set(Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;JLcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;Ljava/lang/String;)V

    return-void
.end method

.method public sendScheduleInstallLog()V
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->getScreenId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "0007"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/idm/fotaagent/analytics/samsunganalytics/SALogging;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public tryInstall()V
    .locals 3

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->getScreenId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0008"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/idm/fotaagent/analytics/samsunganalytics/SALogging;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->fumoInstallHandler:Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->execute()V

    return-void
.end method
