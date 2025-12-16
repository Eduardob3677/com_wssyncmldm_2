.class public Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$Presenter;


# instance fields
.field private final mainTitleAnimator:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;

.field private final model:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;

.field private final updateStateContext:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;

.field private final view:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;


# direct methods
.method public constructor <init>(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->view:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;

    new-instance p1, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;

    invoke-direct {p1, p2}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->model:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;

    new-instance p1, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;

    new-instance v0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/b;-><init>(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;I)V

    new-instance v1, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/b;-><init>(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;I)V

    invoke-direct {p1, v0, v1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    iput-object p1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->updateStateContext:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;

    new-instance v0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;

    invoke-virtual {p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;->getUpdateState()Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->getMainTitle()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->mainTitleAnimator:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->lambda$onCreate$2(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic b(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->doOnExit(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;)V

    return-void
.end method

.method public static synthetic c(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->startAnimator()V

    return-void
.end method

.method public static synthetic d(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->stopAnimator()V

    return-void
.end method

.method private doOnEntry(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;)V
    .locals 1

    invoke-virtual {p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->getStatus()Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    move-result-object v0

    invoke-virtual {p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->getParamForOnEntry()Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->setProgressView(Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;)V

    return-void
.end method

.method private doOnExit(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;)V
    .locals 1

    invoke-virtual {p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->getStatus()Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    move-result-object v0

    invoke-virtual {p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->getParamForOnExit()Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->setProgressView(Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;)V

    return-void
.end method

.method public static synthetic e(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->lambda$onCreate$0(Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;)V

    return-void
.end method

.method public static synthetic f(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->lambda$onCreate$1(Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;)V

    return-void
.end method

.method public static synthetic g(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->doOnEntry(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;)V
    .locals 5

    iget-object p1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->model:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;

    invoke-virtual {p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;->getUpdateInfo()Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->updateStateContext:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;

    invoke-virtual {p1}, Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;->installationStep()I

    move-result v1

    invoke-static {v1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->of(I)Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    move-result-object v1

    iget-object v2, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->view:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/f;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/f;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1, v3}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;->restoreIfNeeded(Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;->installationStep()I

    move-result v0

    invoke-static {v0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->of(I)Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->view:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->updateStateContext:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;->getUpdateState()Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;

    move-result-object p0

    invoke-virtual {p1}, Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;->percent()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->getParamForRefresh(I)Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;->setProgressView(Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;)V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;)V
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->view:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;

    iget-object v1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->model:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;

    invoke-virtual {p1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->getStatus()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;->getProgressBarsVisible(I)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;->makeProgressBars(I)V

    iget-object p1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->updateStateContext:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;

    invoke-virtual {p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;->changeUpdateStateIfNeeded()V

    iget-object p1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->updateStateContext:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;

    invoke-virtual {p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;->getUpdateState()Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->refreshMainTitle(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;)V

    return-void
.end method

.method private synthetic lambda$onCreate$2(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->refreshMainTitleAndButton()V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->refreshViewsByPendingPause(Z)V

    return-void
.end method

.method private refreshAnimator(Z)V
    .locals 4

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->model:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;

    new-instance v1, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/d;-><init>(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;I)V

    new-instance v2, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/d;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/d;-><init>(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;I)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;->refreshAnimatorBy(ZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private refreshButton(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;)V
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->model:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;->isEmergencyServiceType()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->view:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;

    const/4 p1, 0x0

    invoke-interface {p0, p1, p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;->setButtons(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->view:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;

    invoke-virtual {p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->getPauseButtonTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->getResumeButtonTitle()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;->setButtons(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private refreshMainTitle(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;)V
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->mainTitleAnimator:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;

    invoke-virtual {p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->getMainTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->setTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->view:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->mainTitleAnimator:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->getSpannableStringWithoutAnimator()Landroid/text/SpannableString;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;->setMainTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private refreshMainTitleAndButton()V
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->updateStateContext:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;->getUpdateState()Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->refreshMainTitle(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;)V

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->refreshButton(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;)V

    return-void
.end method

.method private refreshProgressView(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;)V
    .locals 1

    invoke-virtual {p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->getStatus()Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    move-result-object v0

    invoke-virtual {p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->getParamForRefresh()Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->setProgressView(Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;)V

    return-void
.end method

.method private refreshViews()V
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->updateStateContext:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;->getUpdateState()Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->refreshMainTitle(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->refreshVisibility()V

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->refreshProgressView(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;)V

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->refreshButton(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;)V

    return-void
.end method

.method private refreshViewsByPendingPause(Z)V
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->view:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;

    xor-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;->setHighEmphasisButton(Z)V

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->refreshAnimator(Z)V

    return-void
.end method

.method private refreshVisibility()V
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->view:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->model:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;->getProgressBarsVisible()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;->makeProgressBars(I)V

    return-void
.end method

.method private setProgressView(Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->view:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;

    invoke-interface {p0, p1, p2}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;->setProgressView(Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/ProgressViewParams;)V

    return-void
.end method

.method private startAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->mainTitleAnimator:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->view:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->startIfPossible(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;)V

    return-void
.end method

.method private stopAnimator()V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->mainTitleAnimator:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/MainTitleAnimator;->stop()V

    return-void
.end method


# virtual methods
.method public download()V
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->model:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;->download()V

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->startAnimator()V

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->refreshMainTitleAndButton()V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->updateStateContext:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;->getUpdateState()Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->refreshButton(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->getInstance()Lcom/idm/fotaagent/abupdate/manager/EnablerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->getPendingPause()Landroidx/lifecycle/C;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->refreshViewsByPendingPause(Z)V

    return-void
.end method

.method public onCreate()V
    .locals 4

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->view:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;

    iget-object v1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->updateStateContext:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;

    invoke-virtual {v1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;->getUpdateState()Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->getMainBody()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;->setMainBody(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->model:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;->getUpdateInfoLiveData()Landroidx/lifecycle/C;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->view:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;

    invoke-interface {v1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;->getLifecycleOwner()Landroidx/lifecycle/w;

    move-result-object v1

    new-instance v2, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/c;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/c;-><init>(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;I)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/C;->e(Landroidx/lifecycle/w;Landroidx/lifecycle/G;)V

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->updateStateContext:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateContext;->getStatusLiveData()Landroidx/lifecycle/F;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->view:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;

    invoke-interface {v1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;->getLifecycleOwner()Landroidx/lifecycle/w;

    move-result-object v1

    new-instance v2, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/c;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/c;-><init>(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;I)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/C;->e(Landroidx/lifecycle/w;Landroidx/lifecycle/G;)V

    invoke-static {}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->getInstance()Lcom/idm/fotaagent/abupdate/manager/EnablerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->getPendingPause()Landroidx/lifecycle/C;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->view:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;

    invoke-interface {v1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;->getLifecycleOwner()Landroidx/lifecycle/w;

    move-result-object v1

    new-instance v2, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/c;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/c;-><init>(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;I)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/C;->e(Landroidx/lifecycle/w;Landroidx/lifecycle/G;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->refreshViews()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->startAnimator()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->stopAnimator()V

    return-void
.end method

.method public pauseIfPossible()V
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->model:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;->needsBlockToPause()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->view:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;

    invoke-interface {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;->showPauseBlockToast()V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->model:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;->pause()V

    return-void
.end method

.method public tryPause()V
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->model:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;->needsBlockToPause()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->view:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;

    invoke-interface {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;->showPauseBlockToast()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->model:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressModel;->needsConfirmToPause()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->view:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;

    invoke-interface {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;->showPauseConfirmDialog()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;->pauseIfPossible()V

    return-void
.end method
