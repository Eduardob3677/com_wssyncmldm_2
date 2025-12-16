.class public abstract Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->context:Landroid/content/Context;

    return-void
.end method

.method private isPauseStatus()Z
    .locals 1

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getFumoStatus()I

    move-result p0

    const/16 v0, 0xf2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public convertPercent(I)I
    .locals 0

    return p1
.end method

.method public abstract getActiveMainTitle()Ljava/lang/String;
.end method

.method public abstract getActiveNotificationTitle()Ljava/lang/String;
.end method

.method public abstract getActiveProgressViewTitle()Ljava/lang/String;
.end method

.method public getInactiveMainTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->context:Landroid/content/Context;

    const v0, 0x7f1300a8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInactiveNotificationTitle()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->getInactiveMainTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getInactiveProgressViewTitleForOnExit()Ljava/lang/String;
.end method

.method public abstract getInactiveProgressViewTitleForPause()Ljava/lang/String;
.end method

.method public getMainBody()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->context:Landroid/content/Context;

    const v0, 0x7f1300a9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMainTitle()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->isPauseStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->getInactiveMainTitle()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->getActiveMainTitle()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getNotificationTitle()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->isPauseStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->getInactiveNotificationTitle()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->getActiveNotificationTitle()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getOnExitPercent()I
    .locals 0

    const/16 p0, 0x64

    return p0
.end method

.method public getParamForOnEntry()Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->getProgressViewTitle()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;-><init>(Ljava/lang/String;)V

    const p0, 0x7f1402ec

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;->withTitleStyle(I)Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;->build()Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;

    move-result-object p0

    return-object p0
.end method

.method public getParamForOnExit()Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->getInactiveProgressViewTitleForOnExit()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->getOnExitPercent()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;->withPercent(I)Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;->build()Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;

    move-result-object p0

    return-object p0
.end method

.method public getParamForRefresh()Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    iget-object v1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->getUpdateInfo()Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;->percent()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->getParamForRefresh(I)Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;

    move-result-object p0

    return-object p0
.end method

.method public getParamForRefresh(I)Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->getProgressViewTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->convertPercent(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;->withPercent(I)Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams$Builder;->build()Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;

    move-result-object p0

    return-object p0
.end method

.method public getPauseButtonTitle()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->isPauseStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->context:Landroid/content/Context;

    const v0, 0x7f130017

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getProgressViewTitle()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->isPauseStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->getInactiveProgressViewTitleForPause()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->getActiveProgressViewTitle()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getResumeButtonTitle()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->isPauseStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->context:Landroid/content/Context;

    const v0, 0x7f130093

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public abstract getStatus()Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;
.end method

.method public isAllowedOnEntry()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onEntry(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->isAllowedOnEntry()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onExit(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public restore(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0
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

    return-void
.end method

.method public varargs restore(Ljava/util/function/Consumer;Ljava/util/function/Consumer;[Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;",
            ">;[",
            "Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;",
            ")V"
        }
    .end annotation

    array-length p0, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget-object v1, p3, v0

    invoke-static {v1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateFactory;->createOf(Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;)Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
