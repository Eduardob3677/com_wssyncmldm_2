.class public Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskConnectFailed;
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
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getUiMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->isReportFumoStatus()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->IDM_DIALOG_CONNECT_FAIL:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->sendDialogMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "no pop-up, Ui Mode : "

    invoke-static {p0, v0}, LB/f;->D(Ljava/lang/String;I)V

    :goto_1
    sget-object p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->NOTIFICATION_ID_PRIMARY:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->cancel(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;)V

    return-void
.end method
