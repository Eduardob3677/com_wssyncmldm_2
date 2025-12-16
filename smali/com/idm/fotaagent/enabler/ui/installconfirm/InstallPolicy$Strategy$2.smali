.class final enum Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy$2;
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
.method public exceedsPostponeCount(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy$2;->installPostponeType(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    move-result-object v0

    sget-object v1, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;->UNLIMITED:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->postponeCount()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy$2;->installPostponeType(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;->maxCount()I

    move-result p0

    if-lt v0, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public installPostponeType(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->isLiveDemoDevice()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;->NO:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    return-object p0

    :cond_0
    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getServerId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->getInstallPostponeType()Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    move-result-object p0

    return-object p0
.end method

.method public installType(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->isLiveDemoDevice()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;->Force:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;

    return-object p0

    :cond_0
    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getServerId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->getInstallType()Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;

    move-result-object p0

    return-object p0
.end method

.method public isEmergencyService(Landroid/content/Context;)Z
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->isEmergencyService()Z

    move-result p0

    return p0
.end method

.method public isScheduledInstall()Z
    .locals 4

    new-instance p0, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->scheduledInstallTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public postponeType(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->postponeType()Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;

    move-result-object p0

    return-object p0
.end method

.method public rebootOrInstall(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    const-string p0, ""

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/os/PowerManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public removesMediumEmphasisButton(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->isEmergencyService()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;->isAutomaticBehavior()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy$2;->exceedsPostponeCount(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public shouldCountdown(Ljava/lang/String;)Z
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->autoInstall()Z

    move-result p0

    return p0
.end method

.method public updateNotification(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy$2;->shouldCountdown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_INSTALL_CONFIRM_FOREGROUND:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->notify(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy$2;->isScheduledInstall()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy$Strategy$2;->exceedsPostponeCount(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_SCHEDULED_UNPOSTPONABLE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->notify(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_SCHEDULED_POSTPONABLE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->notify(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_INSTALL_CONFIRM_BACKGROUND:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->notify(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)V

    return-void
.end method
