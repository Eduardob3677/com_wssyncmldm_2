.class public Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadConfirm;
.super Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doTaskEvent()V
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getUiMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object v0

    sget-object v1, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;->DOWNLOAD_CONFIRM:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;

    new-instance v2, Lcom/idm/fotaagent/BundleWrapper;

    invoke-direct {v2}, Lcom/idm/fotaagent/BundleWrapper;-><init>()V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->taskId:Ljava/lang/String;

    invoke-virtual {v2, p0}, Lcom/idm/fotaagent/BundleWrapper;->setTaskId(Ljava/lang/String;)Lcom/idm/fotaagent/BundleWrapper;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->sendActivityMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;Lcom/idm/fotaagent/BundleWrapper;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/enabler/fumo/IdleChecker;

    invoke-direct {v1, v0}, Lcom/idm/fotaagent/enabler/fumo/IdleChecker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/enabler/fumo/IdleChecker;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object v0

    sget-object v1, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;->DOWNLOAD_CONFIRM:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;

    new-instance v2, Lcom/idm/fotaagent/BundleWrapper;

    invoke-direct {v2}, Lcom/idm/fotaagent/BundleWrapper;-><init>()V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->taskId:Ljava/lang/String;

    invoke-virtual {v2, p0}, Lcom/idm/fotaagent/BundleWrapper;->setTaskId(Ljava/lang/String;)Lcom/idm/fotaagent/BundleWrapper;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->sendActivityMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;Lcom/idm/fotaagent/BundleWrapper;)V

    return-void

    :cond_1
    const-string v1, "not idle"

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    sget-object v1, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_DOWNLOAD_CONFIRM:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->taskId:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->notify(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->get()Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->getDownloadConfirmTitleId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/idm/fotaagent/utils/ToastHelper;->showLongToast(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;->CHECKING_FOR_UPDATE:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->finish(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;)V

    return-void
.end method
