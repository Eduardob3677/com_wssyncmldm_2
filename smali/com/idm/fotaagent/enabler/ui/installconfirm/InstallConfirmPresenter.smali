.class Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$Presenter;


# instance fields
.field private final context:Landroid/content/Context;

.field private final installCountDown:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;

.field private final model:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;

.field private final taskId:Ljava/lang/String;

.field private final view:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$View;


# direct methods
.method public constructor <init>(Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$View;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->get()Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->installCountDown:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->context:Landroid/content/Context;

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->view:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$View;

    new-instance p1, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;

    invoke-direct {p1, p2}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->model:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;

    iput-object p2, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->taskId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->lambda$onStart$0()V

    return-void
.end method

.method public static synthetic b(Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->refresh()V

    return-void
.end method

.method private synthetic lambda$onStart$0()V
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->view:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$View;

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/installconfirm/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/c;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$View;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private refresh()V
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->view:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$View;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->model:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;

    invoke-virtual {v1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->getMediumEmphasisButtonTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->model:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;

    invoke-virtual {v2}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->getHighEmphasisButtonTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$View;->setButtons(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->get(Landroid/content/Context;)Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->updateNotification(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->shouldCountdown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->installCountDown:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->view:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$View;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->model:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;

    invoke-virtual {v0, v1, p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->startUnlessRunning(Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$View;Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->installCountDown:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->stopIfRunning()V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->view:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$View;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->model:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->getMainBody()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$View;->setMainBody(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public installNow()V
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->installCountDown:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->stopIfRunning()V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->model:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->tryInstall()V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->view:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$View;

    invoke-interface {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$View;->finish()V

    return-void
.end method

.method public onCreate()V
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->view:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$View;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->model:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;

    invoke-virtual {v1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->getMainTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$View;->setMainTitle(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->FOR_WHATS_NEW:Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->isMajorUpdate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->view:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$View;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->context:Landroid/content/Context;

    const v2, 0x7f13009f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getUpdateOneUiVersion()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$View;->setMainOneUi(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->refresh()V

    return-void
.end method

.method public onStart()V
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->get(Landroid/content/Context;)Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/installconfirm/a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/idm/fotaagent/enabler/ui/installconfirm/a;-><init>(Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$Presenter;I)V

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->setOnFirstNetReadyChangedListener(Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$OnFirstNetReadyChangedListener;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->get(Landroid/content/Context;)Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->clearOnFirstNetReadyChangedListener()V

    return-void
.end method

.method public scheduleInstall()V
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->view:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$View;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->model:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;

    invoke-virtual {v1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$View;->startPostponeDialog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;->model:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->sendScheduleInstallLog()V

    return-void
.end method
