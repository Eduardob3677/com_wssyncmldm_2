.class public Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final entryAction:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;",
            ">;"
        }
    .end annotation
.end field

.field private final exitAction:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;",
            ">;"
        }
    .end annotation
.end field

.field private final status:Landroidx/lifecycle/F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/F;"
        }
    .end annotation
.end field

.field private updateState:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UpdateStateContext has been initialized to IDLE state. And set entryAction and exitAction."

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Landroidx/lifecycle/F;

    sget-object v1, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->IDLE:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    invoke-direct {v0, v1}, Landroidx/lifecycle/C;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;->status:Landroidx/lifecycle/F;

    new-instance v0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/IdleState;

    invoke-direct {v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/IdleState;-><init>()V

    iput-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;->updateState:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;

    iput-object p1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;->entryAction:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;->exitAction:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public changeUpdateStateIfNeeded()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateState : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;->updateState:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;

    invoke-virtual {v1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->getStatus()Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;->status:Landroidx/lifecycle/F;

    invoke-virtual {v1}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;->updateState:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->getStatus()Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;->status:Landroidx/lifecycle/F;

    invoke-virtual {v1}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;->updateState:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;

    iget-object v1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;->exitAction:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->onExit(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;->status:Landroidx/lifecycle/F;

    invoke-virtual {v0}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    invoke-static {v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateFactory;->createOf(Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;)Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;->updateState:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;->entryAction:Ljava/util/function/Consumer;

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->onEntry(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getStatusLiveData()Landroidx/lifecycle/F;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/F;"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;->status:Landroidx/lifecycle/F;

    return-object p0
.end method

.method public getUpdateState()Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;->updateState:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;

    return-object p0
.end method

.method public restoreIfNeeded(Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;Ljava/lang/Runnable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Start at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;->updateState:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->getStatus()Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const-string p0, "no need to restore previous status."

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;->updateState:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->getStatus()Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->getStatus()I

    move-result v0

    invoke-virtual {p1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->getStatus()I

    move-result v1

    if-le v0, v1, :cond_1

    const-string v0, "StateMachine moves backward. reset ProgressView"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    invoke-static {p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateFactory;->createOf(Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;)Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;

    move-result-object p2

    iput-object p2, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;->updateState:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;->entryAction:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;->exitAction:Ljava/util/function/Consumer;

    invoke-virtual {p2, v0, v1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->restore(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    iget-object p2, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;->updateState:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;->entryAction:Ljava/util/function/Consumer;

    invoke-virtual {p2, v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->onEntry(Ljava/util/function/Consumer;)V

    sget-object p2, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->DOWNLOADING:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    if-eq p1, p2, :cond_2

    sget-object p2, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->VERIFYING:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    if-eq p1, p2, :cond_2

    sget-object p2, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->OPTIMIZING:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    if-eq p1, p2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;->getStatusLiveData()Landroidx/lifecycle/F;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/F;->i(Ljava/lang/Object;)V

    return-void
.end method
