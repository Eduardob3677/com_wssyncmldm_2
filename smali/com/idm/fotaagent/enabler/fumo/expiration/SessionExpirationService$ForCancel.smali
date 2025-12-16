.class public Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpirationService$ForCancel;
.super Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpirationService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpirationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForCancel"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpirationService;-><init>()V

    return-void
.end method

.method private getCurrentTaskId()Ljava/lang/String;
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getSessionId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isCancellableFumoStatus(Ljava/lang/String;)Z
    .locals 5

    const/4 p0, 0x1

    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    new-instance v2, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v2, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getFumoStatus()I

    move-result p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    aget v4, v1, v3

    if-ne p1, v4, :cond_0

    return p0

    :cond_0
    add-int/2addr v3, p0

    goto :goto_0

    :cond_1
    return v2

    :array_0
    .array-data 4
        0xc8
        0x1e
        0xf2
        0x23
        0x28
        0x32
    .end array-data
.end method

.method private isFotaAgentScreen()Z
    .locals 1

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpirationService$ForCancel;->loadTopPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private isNotAllowedExecuteCancel(Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getFumoStatus()I

    move-result v0

    const/16 v1, 0x1e

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->getEnablerFactory()Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;->getLibraryUtils()Lcom/idm/fotaagent/utils/LibraryUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/idm/fotaagent/utils/LibraryUtils;->isTaskRunning(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "Download in progress. ignore"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v2

    :cond_0
    const/16 p1, 0x32

    if-ne v0, p1, :cond_1

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->get()Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "Install countdown is running. ignore"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v2

    :cond_1
    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpirationService$ForCancel;->isFotaAgentScreen()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "FotaAgent screen is showing. ignore"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public loadTopPackageName()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const-string v0, "am should not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    const-string v0, "tasks should not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p1

    const-string v0, "TASKID"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpirationService$ForCancel;->getCurrentTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpirationService$ForCancel;->isCancellableFumoStatus(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "Not cancelable fumo status. ignore"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return v2

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "different taskId. reschedule 30 days"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    new-instance p1, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->getExpirationNotify()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;->EXPIRATION_CANCEL:Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;

    invoke-static {p0, v0, p1}, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpirationManager;->reschedule(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;)V

    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpirationManager;->schedule(Landroid/content/Context;Ljava/lang/String;)V

    return v2

    :cond_2
    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpirationService$ForCancel;->isNotAllowedExecuteCancel(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Not allowed to execute cancellation. reschedule 1 day"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;->RESCHEDULE_CANCEL:Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;

    invoke-static {p0, v0, p1}, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpirationManager;->reschedule(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;)V

    return v2

    :cond_3
    :try_start_0
    sget-object p0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->SCHEDULE_TYPE_SU_CANCEL_BY_SESSION_EXPIRATION:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    invoke-static {p0}, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller;->forScheduleType(Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;)Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller;

    move-result-object p0

    invoke-interface {p0}, Lcom/idm/fotaagent/scheduler/FumoInitiator;->execute()V
    :try_end_0
    .catch Lcom/idm/fotaagent/scheduler/exception/WrongInitTypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return v2
.end method
