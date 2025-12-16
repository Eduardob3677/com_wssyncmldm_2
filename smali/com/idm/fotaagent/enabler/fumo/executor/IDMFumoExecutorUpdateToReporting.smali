.class public Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorUpdateToReporting;
.super Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;
.source "SourceFile"


# static fields
.field private static final EXTRA_UPDATE_REPORT_VZW:Ljava/lang/String; = "SOFTWARE_UPDATE_COMPLETE"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor$HistoryUpdater;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor$HistoryUpdater;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;-><init>(Ljava/lang/String;Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor$Updater;)V

    return-void
.end method

.method private isOwnedByOrganizationOrIsKioskMode()Z
    .locals 1

    const-string p0, "ro.organization_owned"

    const-string v0, "false"

    invoke-static {p0, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const-string p0, "Organization Owned"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getProKioskManager()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Kiosk Mode"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private showsUpdateReport()Z
    .locals 2

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->FOR_WHATS_NEW:Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->isMajorUpdate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/idm/fotaagent/utils/GeneralUtils;->isSetupWizardInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorUpdateToReporting;->isOwnedByOrganizationOrIsKioskMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getDefaultResultCode()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public idmCallbackExecute(Ljava/lang/String;)V
    .locals 0

    const-string p0, ""

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method

.method public idmExecute(Ljava/lang/String;)V
    .locals 0

    const-string p1, ""

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorUpdateToReporting;->idmFumoStart()V

    return-void
.end method

.method public idmFumoStart()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeManager;->cancel()V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpirationManager;->cancel(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorUpdateToReporting;->report()V

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorUpdateToReporting;->showsUpdateReport()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Do not show report dialog because of major update"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_UPDATE_REPORT:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->taskId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->notify(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->IDM_DIALOG_UPDATE_REPORT:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->sendDialogMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;)V

    return-void
.end method

.method public report()V
    .locals 3

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->taskId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/idm/fotaagent/utils/UpdateResultUtils;

    invoke-direct {v1}, Lcom/idm/fotaagent/utils/UpdateResultUtils;-><init>()V

    invoke-virtual {v1}, Lcom/idm/fotaagent/utils/UpdateResultUtils;->getUpdateResultCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->updateInformation(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/utils/UpdateResultUtils;->isUpdateSucceeded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorUpdateToReporting;->reportUpdateSuccessIfNeeded()V

    const/16 p0, 0x64

    invoke-virtual {v0, p0, v2}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->executeIfPossible(ILjava/lang/String;)V

    return-void

    :cond_0
    const/16 p0, 0x50

    invoke-virtual {v0, p0, v2}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->executeIfPossible(ILjava/lang/String;)V

    return-void
.end method

.method public reportUpdateSuccessIfNeeded()V
    .locals 0

    const-string p0, ""

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const-string p0, "SOFTWARE_UPDATE_COMPLETE"

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/fumo/IntentManager;->sendIntentIfSdmPackageExists(Ljava/lang/String;)V

    return-void
.end method

.method public resumeByNetwork()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorUpdateToReporting;->idmFumoStart()V

    return-void
.end method

.method public resumeByReboot()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorUpdateToReporting;->idmFumoStart()V

    return-void
.end method

.method public updateActionInfo(Ljava/lang/String;)V
    .locals 0

    const-string p0, "do nothing"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method
