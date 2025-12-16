.class public Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration$RegistrationJobService;
.super Landroid/app/job/JobService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegistrationJobService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "jobId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;->isInvalid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "Invalid device; start registration with 1 month latency"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->FOTA_AGENT:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Lcom/idm/fotaagent/restapi/registration/RegistrationHelper;->startDeviceRegistration(Landroid/content/Context;Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;J)V

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration;->access$000(Landroid/content/Context;I)Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/context/Registration;->start()V

    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "should not reach here: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method
