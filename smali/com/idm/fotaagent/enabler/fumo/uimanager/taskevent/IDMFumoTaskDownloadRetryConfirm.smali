.class public Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadRetryConfirm;
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

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->NOTIFICATION_ID_PRIMARY:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    invoke-static {v1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->cancel(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;->getInstance()Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;

    move-result-object v1

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->taskId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;->getNetworkBlockedType(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->isBlocked()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/idm/fotaagent/scheduler/jobschedule/NetworkResumeJobScheduleManager;->schedule(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->taskId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->getFumoTaskEvent(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    return-void

    :cond_0
    invoke-static {v0}, Lcom/idm/fotaagent/utils/NetworkUtil;->isWiFiNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0}, Lcom/idm/fotaagent/database/sqlite/database/settings/SettingsDatabaseManager;->getAutoDownloadOption(Landroid/content/Context;)Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    move-result-object v2

    if-nez v1, :cond_2

    sget-object v1, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->WIFI:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    if-eq v2, v1, :cond_1

    sget-object v1, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->WIFI_AND_CELLULAR:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    if-ne v2, v1, :cond_2

    :cond_1
    invoke-static {v0}, Lcom/idm/fotaagent/scheduler/jobschedule/NetworkResumeJobScheduleManager;->scheduleWithWifiOnly(Landroid/content/Context;)V

    :cond_2
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setUiMode(I)V

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_DOWNLOAD_RETRY_CONFIRM:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->taskId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->notify(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object v0

    sget-object v1, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->IDM_DIALOG_DOWNLOAD_RETRY_CONFIRM:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    new-instance v2, Lcom/idm/fotaagent/BundleWrapper;

    invoke-direct {v2}, Lcom/idm/fotaagent/BundleWrapper;-><init>()V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->taskId:Ljava/lang/String;

    invoke-virtual {v2, p0}, Lcom/idm/fotaagent/BundleWrapper;->setTaskId(Ljava/lang/String;)Lcom/idm/fotaagent/BundleWrapper;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->sendDialogMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;Lcom/idm/fotaagent/BundleWrapper;)V

    return-void
.end method
