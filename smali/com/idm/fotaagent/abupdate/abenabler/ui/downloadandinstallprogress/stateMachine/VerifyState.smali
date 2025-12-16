.class public Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/VerifyState;
.super Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;
.source "SourceFile"


# static fields
.field static final WEIGHT_VERIFY:D = 0.9


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;-><init>()V

    return-void
.end method


# virtual methods
.method public convertPercent(I)I
    .locals 2

    int-to-double p0, p1

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public getActiveMainTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->context:Landroid/content/Context;

    const v0, 0x7f1300bc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getActiveNotificationTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->context:Landroid/content/Context;

    const v0, 0x7f1300bd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getActiveProgressViewTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->context:Landroid/content/Context;

    const v0, 0x7f1300bb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInactiveProgressViewTitleForOnExit()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->context:Landroid/content/Context;

    const v0, 0x7f1300bb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInactiveProgressViewTitleForPause()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->context:Landroid/content/Context;

    const v0, 0x7f1300ba

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOnExitPercent()I
    .locals 4

    invoke-super {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->getOnExitPercent()I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method public getStatus()Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;
    .locals 0

    sget-object p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->VERIFYING:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    return-object p0
.end method

.method public isAllowedOnEntry()Z
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getFumoStatus()I

    move-result v0

    const/16 v1, 0xf2

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/fotaagent/utils/battery/BatteryChecker;->get(Landroid/content/Context;)Lcom/idm/fotaagent/utils/battery/BatteryChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/utils/battery/BatteryChecker;->isEnoughBatteryToUpdate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->getInstance()Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;

    move-result-object p0

    const-class v0, Lcom/idm/fotaagent/receiver/dynamic/BatteryChangeReceiver;

    sget-object v1, Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;->NOT_SPECIFY_FOR_SYSTEM:Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->register(Ljava/lang/Class;Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;)Z

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->IDM_DIALOG_LOW_BATTERY_TO_UPDATE:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->sendDelayedDialogMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;)V

    sget-object p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_AB_UPDATE_FAIL_INSUFFICIENT_BATTERY:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->notify(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->getInstance()Lcom/idm/fotaagent/abupdate/manager/EnablerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->suspend()V

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/idm/fotaagent/scheduler/jobschedule/NetworkResumeJobScheduleManager;->cancel(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method public restore(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 1
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

    sget-object v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->DOWNLOADING:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    filled-new-array {v0}, [Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->restore(Ljava/util/function/Consumer;Ljava/util/function/Consumer;[Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;)V

    return-void
.end method
