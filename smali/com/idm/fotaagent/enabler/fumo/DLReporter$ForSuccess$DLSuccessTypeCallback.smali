.class final Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess$DLSuccessTypeCallback;
.super Lcom/idm/fotaagent/enabler/fumo/UpdateReporter$ReportCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DLSuccessTypeCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/UpdateReporter$ReportCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/idm/fotaagent/enabler/fumo/DLReporter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess$DLSuccessTypeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public idmOnStatus(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess;->access$200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "taskId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Lcom/idm/fotaagent/enabler/fumo/UpdateReporter$ReportCallback;->idmOnStatus(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V

    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x28

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->callbackIfPossible(ILjava/lang/String;)V

    return-void
.end method
