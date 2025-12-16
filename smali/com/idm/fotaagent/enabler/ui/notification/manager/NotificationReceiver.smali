.class public Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationReceiver;
.super Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;-><init>()V

    return-void
.end method

.method private check(Landroid/os/Bundle;)V
    .locals 2

    new-instance p0, Lcom/idm/fotaagent/BundleWrapper;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/BundleWrapper;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/BundleWrapper;->getTaskId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/idm/fotaagent/BundleWrapper;->getNotificationType()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->isSet()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getNotificationStrategy()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;

    move-result-object p0

    invoke-interface {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;->getNotificationId()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->NOTIFICATION_ID_SECONDARY:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->exists(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "actionInfo for taskId "

    const-string v1, " should exist"

    invoke-static {v0, p1, v1}, LB/f;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notificationType changed: tapped="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getNotificationStrategy()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;

    move-result-object p0

    invoke-interface {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;->getNotificationId()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->getNotificationType()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "notificationType should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "taskId should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public handle()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.wssyncmldm:bundle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "bundle should not be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationReceiver;->check(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->getInstance()Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;

    move-result-object p0

    sget-object v1, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;->SCHEDULE_EVENT_SCHEDULE_AND_NOTIFICATION:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->sendMessage(Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
