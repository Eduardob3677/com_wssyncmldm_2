.class public abstract Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration;
.super Lcom/idm/fotaagent/restapi/registration/context/Registration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration$RegistrationJobService;,
        Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration$WithoutUnregistration;,
        Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration$WithPushUnregistration;,
        Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration$WithUnregistration;
    }
.end annotation


# static fields
.field private static final WITHOUT_UNREGISTRATION:I = 0x2d580e79

.field private static final WITH_PUSH_UNREGISTRATION:I = 0x2d580e7a

.field private static final WITH_UNREGISTRATION:I = 0x2d580e7b


# instance fields
.field private final jobId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/restapi/registration/context/Registration;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration;->jobId:I

    return-void
.end method

.method public static synthetic access$000(Landroid/content/Context;I)Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration;
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration;->forJobId(Landroid/content/Context;I)Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(JLandroid/app/job/JobInfo$Builder;)Landroid/app/job/JobInfo;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration;->lambda$schedule$0(JLandroid/app/job/JobInfo$Builder;)Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0
.end method

.method private static forJobId(Landroid/content/Context;I)Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration;
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrong registrationJobId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " handled as WithoutUnregistration"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    new-instance p1, Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration$WithoutUnregistration;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration$WithoutUnregistration;-><init>(Landroid/content/Context;)V

    return-object p1

    :pswitch_0
    new-instance p1, Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration$WithUnregistration;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration$WithUnregistration;-><init>(Landroid/content/Context;)V

    return-object p1

    :pswitch_1
    new-instance p1, Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration$WithPushUnregistration;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration$WithPushUnregistration;-><init>(Landroid/content/Context;)V

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration$WithoutUnregistration;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration$WithoutUnregistration;-><init>(Landroid/content/Context;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2d580e79
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static varargs isJobPending(Landroid/content/Context;[I)Z
    .locals 5

    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "jobScheduler should not be null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    return v0

    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p1, v2

    invoke-virtual {p0, v3}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string p0, "pending jobId: "

    invoke-static {p0, v3}, LB/f;->D(Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static isRegistrationJobPending(Landroid/content/Context;)Z
    .locals 3

    const v0, 0x2d580e7a

    const v1, 0x2d580e7b

    const v2, 0x2d580e79

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration;->isJobPending(Landroid/content/Context;[I)Z

    move-result p0

    return p0
.end method

.method public static isWithoutUnregistrationJobPending(Landroid/content/Context;)Z
    .locals 1

    const v0, 0x2d580e79

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration;->isJobPending(Landroid/content/Context;[I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$schedule$0(JLandroid/app/job/JobInfo$Builder;)Landroid/app/job/JobInfo;
    .locals 0

    invoke-virtual {p2, p0, p1}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/context/Registration;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/job/JobScheduler;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-nez v0, :cond_0

    const-string p0, "jobScheduler should not be null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget p0, p0, Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration;->jobId:I

    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->cancel(I)V

    return-void
.end method

.method public getFallback()Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration;
    .locals 0

    return-object p0
.end method

.method public schedule(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/context/Registration;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/fotaagent/utils/GeneralUtils;->isSetupWizardCompleted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/context/Registration;->unregisterIfNeeded()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "min latency: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, LD2/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p2}, LD2/c;-><init>(IJ)V

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration;->scheduleTemplate(Ljava/util/function/Function;)V

    return-void
.end method

.method public scheduleTemplate(Ljava/util/function/Function;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/app/job/JobInfo$Builder;",
            "Landroid/app/job/JobInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/context/Registration;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/job/JobScheduler;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-nez v0, :cond_0

    const-string p0, "jobScheduler should not be null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    iget v2, p0, Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration;->jobId:I

    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/context/Registration;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class v4, Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration$RegistrationJobService;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "job id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", min latency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", interval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", flex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p1

    if-ne p1, p0, :cond_1

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
