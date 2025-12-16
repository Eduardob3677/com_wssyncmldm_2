.class public Lcom/idm/fotaagent/abupdate/manager/EnablerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/abupdate/manager/EnablerManager$ApplyPayloadError;
    }
.end annotation


# static fields
.field private static final instance:Lcom/idm/fotaagent/abupdate/manager/EnablerManager;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final pendingPause:Landroidx/lifecycle/F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/F;"
        }
    .end annotation
.end field

.field private volatile status:I

.field private final updateEngineManager:Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;

    invoke-direct {v0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;-><init>()V

    sput-object v0, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->instance:Lcom/idm/fotaagent/abupdate/manager/EnablerManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/lifecycle/F;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Landroidx/lifecycle/C;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->pendingPause:Landroidx/lifecycle/F;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EnablerManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Lcom/idm/fotaagent/abupdate/manager/b;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->updateEngineManager:Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/abupdate/manager/EnablerManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->lambda$suspend$2()V

    return-void
.end method

.method public static synthetic access$100(Lcom/idm/fotaagent/abupdate/manager/EnablerManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->cancelAndShowDialog()V

    return-void
.end method

.method public static synthetic b(Lcom/idm/fotaagent/abupdate/manager/EnablerManager;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->lambda$applyPayload$1(J)V

    return-void
.end method

.method public static synthetic c(Landroid/os/Message;)Z
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->lambda$new$0(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method private cancelAndShowDialog()V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskConnectFailed;

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskConnectFailed;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->getTaskId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;-><init>(Ljava/lang/String;)V

    const/16 p0, 0xe6

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->executeIfPossible(II)V

    return-void
.end method

.method private checkFumoStatus(I)V
    .locals 1

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->getFumoStatus()I

    move-result p0

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unexpected FumoStatus : "

    invoke-static {p0, v0}, LB/f;->t(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic d(Lcom/idm/fotaagent/abupdate/manager/EnablerManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->lambda$cancelDownloadingAndInstalling$3()V

    return-void
.end method

.method public static synthetic e(Lcom/idm/fotaagent/abupdate/manager/EnablerManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->lambda$resetUpdateEngine$4()V

    return-void
.end method

.method private getFumoStatus()I
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getFumoStatus()I

    move-result p0

    return p0
.end method

.method public static getInstance()Lcom/idm/fotaagent/abupdate/manager/EnablerManager;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->instance:Lcom/idm/fotaagent/abupdate/manager/EnablerManager;

    return-object v0
.end method

.method private getTaskId()Ljava/lang/String;
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getSessionId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$applyPayload$1(J)V
    .locals 1

    const/16 v0, 0x1e

    :try_start_0
    invoke-direct {p0, v0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->checkFumoStatus(I)V

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->updateEngineManager:Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;

    invoke-virtual {v0, p1, p2}, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->applyPayload(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager$ApplyPayloadError;->access$200(Ljava/lang/String;)Lcom/idm/fotaagent/abupdate/manager/EnablerManager$ApplyPayloadError;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->updateEngineManager:Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;

    invoke-virtual {p1, p0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager$ApplyPayloadError;->handle(Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;)V

    goto :goto_2

    :goto_1
    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->getFumoStatus()I

    move-result p1

    const/16 p2, 0xf2

    if-ne p1, p2, :cond_0

    const-string p0, "do nothing since now is pause state"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->cancelAndShowDialog()V

    :goto_2
    return-void
.end method

.method private synthetic lambda$cancelDownloadingAndInstalling$3()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->updateEngineManager:Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$new$0(Landroid/os/Message;)Z
    .locals 0

    const-string p0, "message doesn\'t support"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$resetUpdateEngine$4()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->updateEngineManager:Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$suspend$2()V
    .locals 1

    const/16 v0, 0xf2

    :try_start_0
    invoke-direct {p0, v0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->checkFumoStatus(I)V

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->updateEngineManager:Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->cancel()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->setPaused()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->cancelAndShowDialog()V

    :goto_2
    return-void
.end method

.method private setPendingPause()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->setPendingPause(Z)V

    return-void
.end method

.method private declared-synchronized setPendingPause(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->pendingPause:Landroidx/lifecycle/F;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/F;->i(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public allocateSpaceAndGetRequiredFreeMemory(Ljava/lang/String;)J
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->updateEngineManager:Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->allocateSpaceForPayload(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public applyPayload(J)V
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/idm/fotaagent/abupdate/manager/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, p2, p0}, Lcom/idm/fotaagent/abupdate/manager/c;-><init>(IJLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bind()V
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->updateEngineManager:Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/idm/fotaagent/abupdate/manager/a;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Lcom/idm/fotaagent/abupdate/manager/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bindForSlotSwitch(Ljava/util/concurrent/CompletableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->updateEngineManager:Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->bindForSlotSwitch(Ljava/util/concurrent/CompletableFuture;)V

    return-void
.end method

.method public cancelDownloadingAndInstalling()V
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/idm/fotaagent/abupdate/manager/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/idm/fotaagent/abupdate/manager/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cleanupSuccessfulUpdate()I
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->updateEngineManager:Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->cleanupSuccessfulUpdate()I

    move-result p0

    return p0
.end method

.method public getPendingPause()Landroidx/lifecycle/C;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/C;"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->pendingPause:Landroidx/lifecycle/F;

    return-object p0
.end method

.method public getUpdateEngineStatus()Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->status:I

    invoke-static {p0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->of(I)Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    move-result-object p0

    return-object p0
.end method

.method public isRunning()Z
    .locals 0

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->getUpdateEngineStatus()Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->isRunning()Z

    move-result p0

    return p0
.end method

.method public resetShouldSwitchSlotOnReboot()V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->updateEngineManager:Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->resetShouldSwitchSlotOnReboot()V

    return-void
.end method

.method public resetUpdateEngine()V
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/idm/fotaagent/abupdate/manager/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/idm/fotaagent/abupdate/manager/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->IDLE:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->setUpdateStatus(I)V

    return-void
.end method

.method public resume(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->applyPayload(J)V

    return-void
.end method

.method public setPaused()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->setPendingPause(Z)V

    return-void
.end method

.method public setShouldSwitchSlotOnReboot(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->updateEngineManager:Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->setShouldSwitchSlotOnReboot(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setUpdateStatus(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public suspend()V
    .locals 3

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->setPendingPause()V

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/idm/fotaagent/abupdate/manager/a;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/idm/fotaagent/abupdate/manager/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
