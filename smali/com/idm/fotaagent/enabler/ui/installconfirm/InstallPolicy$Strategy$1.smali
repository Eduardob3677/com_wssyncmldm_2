.class final enum Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy$1;
.super Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$1;)V

    return-void
.end method


# virtual methods
.method public installPostponeType(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;
    .locals 0

    sget-object p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;->UNLIMITED:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    return-object p0
.end method

.method public installType(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;
    .locals 0

    sget-object p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;->Normal:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;

    return-object p0
.end method

.method public isEmergencyService(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isScheduledInstall()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public postponeType(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$None;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$None;-><init>()V

    return-object p0
.end method

.method public rebootOrInstall(Ljava/lang/String;)V
    .locals 1

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->setNeedToReboot(Z)V

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->getEnablerFactory()Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;

    move-result-object p0

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;->getInstallHandler(Landroid/content/Context;Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->execute()V

    return-void
.end method

.method public removesMediumEmphasisButton(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public shouldCountdown(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateNotification(Ljava/lang/String;)V
    .locals 0

    sget-object p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_INSTALL_CONFIRM_BACKGROUND:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->notify(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)V

    return-void
.end method
