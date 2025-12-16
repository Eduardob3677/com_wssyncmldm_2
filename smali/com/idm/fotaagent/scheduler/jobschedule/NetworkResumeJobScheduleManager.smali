.class public Lcom/idm/fotaagent/scheduler/jobschedule/NetworkResumeJobScheduleManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/scheduler/jobschedule/NetworkResumeJobScheduleManager$NetworkResumeType;
    }
.end annotation


# static fields
.field static final KEY_TASKID:Ljava/lang/String; = "TASKID"

.field private static final NETWORK_RESUME_JOB_ID:I = 0x2d580e77


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancel(Landroid/content/Context;)V
    .locals 1

    const-string v0, "cancel NetworkResumeJobService"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    if-nez p0, :cond_0

    const-string p0, "JobScheduler is null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_0
    const v0, 0x2d580e77

    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->cancel(I)V

    return-void
.end method

.method private static generateJobInfo(Landroid/content/Context;Landroid/net/NetworkRequest;Z)Landroid/app/job/JobInfo;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/idm/fotaagent/scheduler/jobschedule/NetworkResumeJobService;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance p0, Landroid/os/PersistableBundle;

    invoke-direct {p0}, Landroid/os/PersistableBundle;-><init>()V

    const-string v1, "TASKID"

    invoke-static {}, Lcom/idm/fotaagent/scheduler/jobschedule/NetworkResumeJobScheduleManager;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/app/job/JobInfo$Builder;

    const v2, 0x2d580e77

    invoke-direct {v1, v2, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v1, p1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    if-eqz p2, :cond_0

    sget p1, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->HOUR_IN_MILLIS:I

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    :cond_0
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0
.end method

.method private static varargs generateNetworkRequest([I)Landroid/net/NetworkRequest;
    .locals 2

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v1, Lcom/idm/fotaagent/scheduler/jobschedule/a;

    invoke-direct {v1, v0}, Lcom/idm/fotaagent/scheduler/jobschedule/a;-><init>(Landroid/net/NetworkRequest$Builder;)V

    invoke-interface {p0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    const/16 p0, 0xc

    invoke-virtual {v0, p0}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    const/16 p0, 0x10

    invoke-virtual {v0, p0}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    const/16 p0, 0xf

    invoke-virtual {v0, p0}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    invoke-static {}, Lcom/samsung/android/fotaagent/common/feature/InRoaming;->get()Lcom/samsung/android/fotaagent/common/feature/InRoaming;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/fotaagent/common/feature/InRoaming;->MOBILE_ALLOWED:Lcom/samsung/android/fotaagent/common/feature/InRoaming;

    if-eq p0, v1, :cond_0

    const/16 p0, 0x12

    invoke-virtual {v0, p0}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p0

    return-object p0
.end method

.method private static getTaskId()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isPendingJobService(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "check NetworkResumeJobService"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "JobScheduler is null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return v0

    :cond_0
    const v1, 0x2d580e77

    invoke-virtual {p0, v1}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p0, "jobInfo is not null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string p0, "jobInfo is null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v0
.end method

.method public static reScheduleIfExistPendingJob(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/idm/fotaagent/scheduler/jobschedule/NetworkResumeJobScheduleManager;->isPendingJobService(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/idm/fotaagent/scheduler/jobschedule/NetworkResumeJobScheduleManager;->schedule(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static schedule(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-static {}, Lcom/idm/fotaagent/scheduler/jobschedule/NetworkResumeJobScheduleManager;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->isReportFumoStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/idm/fotaagent/enabler/network/DMNetworkChecker;->getInstance()Lcom/idm/fotaagent/enabler/network/DMNetworkChecker;

    move-result-object v0

    invoke-static {}, Lcom/idm/fotaagent/scheduler/jobschedule/NetworkResumeJobScheduleManager;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/enabler/network/DMNetworkChecker;->getNetworkBlockedType(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    move-result-object v0

    invoke-static {}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->getInstance()Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->isWifiOnly()Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;->getInstance()Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;

    move-result-object v0

    invoke-static {}, Lcom/idm/fotaagent/scheduler/jobschedule/NetworkResumeJobScheduleManager;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;->getNetworkBlockedType(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    move-result-object v0

    invoke-static {}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->getInstance()Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;

    move-result-object v1

    invoke-static {}, Lcom/idm/fotaagent/scheduler/jobschedule/NetworkResumeJobScheduleManager;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->isWifiOnlyForDl(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    sget-object v2, Lcom/idm/fotaagent/scheduler/jobschedule/NetworkResumeJobScheduleManager$1;->$SwitchMap$com$idm$fotaagent$enabler$network$NetworkBlockedType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v2

    move v1, v3

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-ne v1, v3, :cond_3

    filled-new-array {v3}, [I

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/idm/fotaagent/scheduler/jobschedule/NetworkResumeJobScheduleManager;->schedule(Landroid/content/Context;Z[I)V

    return-void

    :cond_3
    filled-new-array {v2, v3}, [I

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/idm/fotaagent/scheduler/jobschedule/NetworkResumeJobScheduleManager;->schedule(Landroid/content/Context;Z[I)V

    return-void
.end method

.method private static varargs schedule(Landroid/content/Context;Z[I)V
    .locals 4

    const-string v0, "start NetworkResumeJobService"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "WIFI"

    goto :goto_1

    :cond_0
    const-string v2, "CELLULAR"

    :goto_1
    const-string v3, "required network type - "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/idm/fotaagent/scheduler/jobschedule/NetworkResumeJobScheduleManager;->generateNetworkRequest([I)Landroid/net/NetworkRequest;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/idm/fotaagent/scheduler/jobschedule/NetworkResumeJobScheduleManager;->generateJobInfo(Landroid/content/Context;Landroid/net/NetworkRequest;Z)Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/idm/fotaagent/scheduler/jobschedule/NetworkResumeJobScheduleManager;->scheduleJobInfo(Landroid/content/Context;Landroid/app/job/JobInfo;)V

    return-void
.end method

.method private static scheduleJobInfo(Landroid/content/Context;Landroid/app/job/JobInfo;)V
    .locals 1

    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    if-nez p0, :cond_0

    const-string p0, "JobScheduler is null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    const-string p0, "SUCCESS"

    goto :goto_0

    :cond_1
    const-string p0, "FAIL"

    :goto_0
    const-string p1, "schedule - "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method

.method public static scheduleWithLatencyMobileOnly(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/idm/fotaagent/scheduler/jobschedule/NetworkResumeJobScheduleManager;->schedule(Landroid/content/Context;Z[I)V

    return-void
.end method

.method public static scheduleWithWifiOnly(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/idm/fotaagent/scheduler/jobschedule/NetworkResumeJobScheduleManager;->schedule(Landroid/content/Context;Z[I)V

    return-void
.end method
