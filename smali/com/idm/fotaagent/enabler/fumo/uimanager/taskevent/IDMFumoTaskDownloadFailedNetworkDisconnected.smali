.class public Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadFailedNetworkDisconnected;
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

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_DOWNLOAD_FAIL_NETWORK_DISCONNECTED:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->taskId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->notify(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getUiMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string p0, "no pop-up"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object v0

    sget-object v1, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->IDM_DIALOG_DOWNLOAD_FAILED_NETWORK_DISCONNECTED:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    new-instance v2, Lcom/idm/fotaagent/BundleWrapper;

    invoke-direct {v2}, Lcom/idm/fotaagent/BundleWrapper;-><init>()V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->taskId:Ljava/lang/String;

    invoke-virtual {v2, p0}, Lcom/idm/fotaagent/BundleWrapper;->setTaskId(Ljava/lang/String;)Lcom/idm/fotaagent/BundleWrapper;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->sendDialogMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;Lcom/idm/fotaagent/BundleWrapper;)V

    return-void
.end method
