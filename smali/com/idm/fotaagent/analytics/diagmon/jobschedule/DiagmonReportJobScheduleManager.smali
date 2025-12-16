.class public Lcom/idm/fotaagent/analytics/diagmon/jobschedule/DiagmonReportJobScheduleManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DIAGMON_REPORT_JOB_ID:I = 0x2d580e78


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateJobInfo(Landroid/content/Context;Landroid/net/NetworkRequest;Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo;
    .locals 2

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/idm/fotaagent/analytics/diagmon/jobschedule/DiagmonReportJobService;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance p0, Landroid/app/job/JobInfo$Builder;

    const v1, 0x2d580e78

    invoke-direct {p0, v1, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {p0, p1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0
.end method

.method private static generateNetworkRequest()Landroid/net/NetworkRequest;
    .locals 2

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    return-object v0
.end method

.method public static schedule(Landroid/content/Context;Landroid/os/PersistableBundle;)V
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/analytics/diagmon/jobschedule/DiagmonReportJobScheduleManager;->generateNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/idm/fotaagent/analytics/diagmon/jobschedule/DiagmonReportJobScheduleManager;->generateJobInfo(Landroid/content/Context;Landroid/net/NetworkRequest;Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/idm/fotaagent/analytics/diagmon/jobschedule/DiagmonReportJobScheduleManager;->scheduleJobInfo(Landroid/content/Context;Landroid/app/job/JobInfo;)V

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
    const-string p1, "DiagmonReportJobSchedule - "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method
