.class public Lcom/idm/fotaagent/analytics/diagmon/jobschedule/DiagmonReportJobService;
.super Landroid/app/job/JobService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p1

    const-string v0, "errorCode"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "description"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "serviceDefinedKey"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "error code is null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return v2

    :cond_0
    const-string v3, "Device registration failed"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v3, p0}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;->isRegistered()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "already registered. ignore DiagMon report"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v2

    :cond_1
    new-instance p0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->withDescription(Ljava/lang/String;)Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;

    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->withServiceDefinedKey(Ljava/lang/String;)Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;

    :cond_3
    invoke-virtual {p0}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->report()V

    return v2
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const-string p0, ""

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method
