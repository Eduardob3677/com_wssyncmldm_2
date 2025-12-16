.class Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmContractor$Presenter;


# instance fields
.field private final context:Landroid/content/Context;

.field private final model:Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;

.field private final view:Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmContractor$View;


# direct methods
.method public constructor <init>(Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmContractor$View;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmPresenter;->view:Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmContractor$View;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmPresenter;->context:Landroid/content/Context;

    new-instance p1, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;

    invoke-direct {p1, p2}, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmPresenter;->model:Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmPresenter;->view:Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmContractor$View;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmPresenter;->model:Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;

    invoke-virtual {v1}, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->getMainTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmContractor$View;->setMainTitle(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->FOR_WHATS_NEW:Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmPresenter;->context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->isMajorUpdate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmPresenter;->view:Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmContractor$View;

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmPresenter;->context:Landroid/content/Context;

    const v3, 0x7f13009f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getUpdateOneUiVersion()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmContractor$View;->setMainOneUi(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmPresenter;->view:Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmContractor$View;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmPresenter;->model:Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->getMainBody()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmContractor$View;->setMainBody(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_DOWNLOAD_CONFIRM:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmPresenter;->model:Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;

    invoke-virtual {v1}, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->notify(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmPresenter;->model:Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->postponeIfNeeded()V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmPresenter;->model:Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->scheduleNetworkResumeIfNeeded()V

    return-void
.end method
