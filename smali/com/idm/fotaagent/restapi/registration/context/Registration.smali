.class public abstract Lcom/idm/fotaagent/restapi/registration/context/Registration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static applicationContext:Landroid/content/Context; = null

.field private static final serialVersionUID:J = 0x4a26a3da156cca15L


# instance fields
.field private final isDmFollowing:Z

.field private final isForeground:Z

.field private registrationState:Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/idm/fotaagent/restapi/registration/context/Registration;-><init>(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/idm/fotaagent/restapi/registration/context/Registration;-><init>(Landroid/content/Context;ZZ)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/idm/fotaagent/restapi/registration/context/Registration;->applicationContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/idm/fotaagent/restapi/registration/context/Registration;->isDmFollowing:Z

    iput-boolean p3, p0, Lcom/idm/fotaagent/restapi/registration/context/Registration;->isForeground:Z

    new-instance p1, Lcom/idm/fotaagent/restapi/registration/state/DeviceRegistrationState;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/restapi/registration/state/DeviceRegistrationState;-><init>(Lcom/idm/fotaagent/restapi/registration/context/Registration;)V

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/registration/context/Registration;->registrationState:Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/restapi/registration/context/Registration;)Ljava/lang/Void;
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/restapi/registration/context/Registration;->lambda$start$0()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(JLandroid/app/job/JobInfo$Builder;)Landroid/app/job/JobInfo;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/idm/fotaagent/restapi/registration/context/Registration;->lambda$scheduleFallback$1(JLandroid/app/job/JobInfo$Builder;)Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$scheduleFallback$1(JLandroid/app/job/JobInfo$Builder;)Landroid/app/job/JobInfo;
    .locals 0

    invoke-virtual {p2, p0, p1}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$start$0()Ljava/lang/Void;
    .locals 0

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/context/Registration;->unregisterIfNeeded()V

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/registration/context/Registration;->registrationState:Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;->onEntry()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private scheduleFallback(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/context/Registration;->getFallback()Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration;

    move-result-object p0

    new-instance v0, LD2/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, LD2/c;-><init>(IJ)V

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration;->scheduleTemplate(Ljava/util/function/Function;)V

    return-void
.end method


# virtual methods
.method public changeRegistrationState(Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;)V
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/restapi/registration/context/Registration;->registrationState:Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;

    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;->onExit()V

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/registration/context/Registration;->registrationState:Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/registration/state/RegistrationState;->onEntry()V

    return-void
.end method

.method public end()V
    .locals 1

    const-string v0, "registration is completed"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/context/Registration;->getFallback()Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration;->cancel()V

    return-void
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 0

    sget-object p0, Lcom/idm/fotaagent/restapi/registration/context/Registration;->applicationContext:Landroid/content/Context;

    return-object p0
.end method

.method public abstract getFallback()Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration;
.end method

.method public isDmFollowing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/idm/fotaagent/restapi/registration/context/Registration;->isDmFollowing:Z

    return p0
.end method

.method public isForeground()Z
    .locals 0

    iget-boolean p0, p0, Lcom/idm/fotaagent/restapi/registration/context/Registration;->isForeground:Z

    return p0
.end method

.method public final start()V
    .locals 2

    sget v0, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->HOUR_IN_MILLIS:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/restapi/registration/context/Registration;->start(J)V

    return-void
.end method

.method public final start(J)V
    .locals 1

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/context/Registration;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/fotaagent/utils/GeneralUtils;->isSetupWizardCompleted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/registration/context/Registration;->unregisterIfNeeded()V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/restapi/registration/context/Registration;->scheduleFallback(J)V

    invoke-static {}, Lcom/idm/fotaagent/InitExecutor;->get()Lcom/idm/fotaagent/InitExecutor;

    move-result-object p1

    new-instance p2, LD2/a;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p0}, LD2/a;-><init>(ILjava/io/Serializable;)V

    invoke-static {}, Lcom/idm/fotaagent/InitExecutor;->get()Lcom/idm/fotaagent/InitExecutor;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, LD2/b;

    invoke-direct {v0, p0}, LD2/b;-><init>(Lcom/idm/fotaagent/InitExecutor;)V

    invoke-virtual {p1, p2, v0}, Lcom/idm/fotaagent/InitExecutor;->execute(Ljava/util/concurrent/Callable;Ljava/util/function/BooleanSupplier;)V

    return-void
.end method

.method public abstract unregisterIfNeeded()V
.end method
