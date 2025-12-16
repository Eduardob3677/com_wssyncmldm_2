.class abstract Lcom/idm/fotaagent/enabler/ui/notification/manager/RealNotificationTypeManagerService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManagerService;


# instance fields
.field private intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private cancelNotification()V
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/RealNotificationTypeManagerService;->intent:Landroid/content/Intent;

    const-string v1, "com.wssyncmldm.NOTIFICATION_TYPE_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/RealNotificationTypeManagerService;->intent:Landroid/content/Intent;

    const-string v2, "NOTIFICATION_ID_KEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, " - One of notificationType and notificationId should not be null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/RealNotificationTypeManagerService;->cancelNotificationBy(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/RealNotificationTypeManagerService;->cancelNotificationBy(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;)V

    :goto_0
    invoke-virtual {v1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->clearNotificationType()V

    return-void
.end method

.method private cancelNotificationBy(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - NotificationType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getNotificationStrategy()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;->getNotificationId()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    move-result-object v0

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->isSet()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " - existing notificationType should be the same as that to be cancelled - existing["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->getNotificationType()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "], to be cancelled["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    sget-object p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->NOTIFICATION_ID_NONE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    return-object p0

    :cond_0
    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/RealNotificationTypeManagerService;->cancelNotificationBy(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;)V

    return-object v0
.end method

.method private cancelNotificationBy(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - NotificationId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->NOTIFICATION_ID_NONE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " - Do not use "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", which is just a placeholder"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->getNotificationType()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    move-result-object v0

    sget-object v1, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_NONE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " - No notifications posted in "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": do nothing"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getNotificationStrategy()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;->isForegroundService()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/RealNotificationTypeManagerService;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p1, v0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->getId(Z)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    :goto_0
    return-void
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 1

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    return-object p0
.end method

.method private notify(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - NotificationType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0, p2}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getContentTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getContentText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], taskId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getBuilder(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getNotificationStrategy()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;

    move-result-object v2

    invoke-interface {v2}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;->isForegroundService()Z

    move-result v3

    invoke-interface {v2}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;->getNotificationId()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    move-result-object v2

    sget-object v4, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->NOTIFICATION_ID_NONE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    if-ne v2, v4, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " - Do not use "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", which is just a placeholder"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/RealNotificationTypeManagerService;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v4

    sget-object v5, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;->IDM_NOTIFICATION_CHANNEL_NO_SOUND_NO_VIBRATION:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, "channel has not been created yet"

    invoke-static {v4}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    :try_start_0
    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/RealNotificationTypeManagerService;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v4

    invoke-virtual {v5}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    invoke-static {v0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/notification/manager/RealNotificationTypeManagerService;->setToNotification(Landroid/app/Notification;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->getId(Z)I

    move-result p2

    const-string v4, " - current : "

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/RealNotificationTypeManagerService;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v6

    xor-int/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->getId(Z)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/app/NotificationManager;->cancel(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\nstartForeground: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const/16 v1, 0x9

    invoke-virtual {p0, p2, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v5}, Landroid/app/Service;->stopForeground(Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\nnotify: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/RealNotificationTypeManagerService;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_1
    invoke-virtual {v2, p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->setNotificationType(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)V

    return-void
.end method

.method private notifyNotification()V
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/RealNotificationTypeManagerService;->intent:Landroid/content/Intent;

    const-string v1, "com.wssyncmldm.NOTIFICATION_TYPE_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/RealNotificationTypeManagerService;->intent:Landroid/content/Intent;

    const-string v2, "com.wssyncmldm.TASK_ID_KEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/RealNotificationTypeManagerService;->notify(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, " - Neither notificationType nor taskId should be null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void
.end method

.method private static setToNotification(Landroid/app/Notification;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    new-instance v0, Lcom/idm/fotaagent/BundleWrapper;

    invoke-direct {v0}, Lcom/idm/fotaagent/BundleWrapper;-><init>()V

    invoke-virtual {v0, p2}, Lcom/idm/fotaagent/BundleWrapper;->setTaskId(Ljava/lang/String;)Lcom/idm/fotaagent/BundleWrapper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/idm/fotaagent/BundleWrapper;->setNotificationType(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)Lcom/idm/fotaagent/BundleWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/fotaagent/BundleWrapper;->build()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "com.wssyncmldm:bundle"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string p0, ""

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/RealNotificationTypeManagerService;->intent:Landroid/content/Intent;

    const-string p2, "OPERATION_KEY"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p1, " - operation should not be null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return p2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p3

    const/4 v0, -0x1

    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p3, "OPERATION_START"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    move v0, p2

    goto :goto_0

    :sswitch_1
    const-string p3, "OPERATION_NOTIFY"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string p3, "OPERATION_CANCEL"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " - unexpected operation: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_0
    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/RealNotificationTypeManagerService;->notifyNotification()V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/RealNotificationTypeManagerService;->cancelNotification()V

    :goto_1
    :pswitch_2
    return p2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x115df38e -> :sswitch_2
        0x22f7541 -> :sswitch_1
        0x2162c34a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
