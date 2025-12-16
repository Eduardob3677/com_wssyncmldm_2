.class public Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess;
.super Lcom/idm/fotaagent/enabler/fumo/DLReporter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/DLReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForSuccess"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess$InstanceLazyHolder;,
        Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess$DLSuccessTypeCallback;
    }
.end annotation


# static fields
.field private static final reporting:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess;->reporting:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/DLReporter;-><init>()V

    const-string p0, ""

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/idm/fotaagent/enabler/fumo/DLReporter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess;-><init>()V

    return-void
.end method

.method public static synthetic access$200()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess;->reporting:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static getInstance()Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess$InstanceLazyHolder;->INSTANCE:Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess;

    return-object v0
.end method


# virtual methods
.method public finish(Ljava/lang/String;)V
    .locals 1

    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x28

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->callbackIfPossible(ILjava/lang/String;)V

    return-void
.end method

.method public getCallback()Lcom/idm/adapter/callback/IDMCallback;
    .locals 1

    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess$DLSuccessTypeCallback;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess$DLSuccessTypeCallback;-><init>(Lcom/idm/fotaagent/enabler/fumo/DLReporter$1;)V

    return-object p0
.end method

.method public report(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess;->report(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public report(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess;->reporting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "taskId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Lcom/idm/fotaagent/enabler/fumo/UpdateReporter;->report(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
