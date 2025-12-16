.class public Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancel(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->getNotificationTypeManagerServiceClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "OPERATION_KEY"

    const-string v2, "OPERATION_CANCEL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NOTIFICATION_ID_KEY"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static cancel(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cancel. notificationType : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getNotificationStrategy()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;->getNotificationId()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->getNotificationTypeManagerServiceClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "OPERATION_KEY"

    const-string v2, "OPERATION_CANCEL"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.wssyncmldm.NOTIFICATION_TYPE_KEY"

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static cancelAll()V
    .locals 5

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->values()[Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    sget-object v4, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->NOTIFICATION_ID_NONE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v3}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->cancel(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method public static notify(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notify. notificationType : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTimer;

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTimer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTimer;->stop()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getNotificationStrategy()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;->getNotificationId()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->getNotificationTypeManagerServiceClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "OPERATION_KEY"

    const-string v2, "OPERATION_NOTIFY"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.wssyncmldm.NOTIFICATION_TYPE_KEY"

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "com.wssyncmldm.TASK_ID_KEY"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget-object p1, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_UPDATE_REPORT:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->isSet()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_DOWNLOAD_CONFIRM:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_DOWNLOAD_PROGRESS:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    if-ne p0, v0, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->cancel(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object p0

    sget-object p1, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->IDM_DIALOG_UPDATE_REPORT:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->finish(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;)Z

    :cond_1
    return-void
.end method

.method public static renotifyAll()V
    .locals 5

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    :try_start_0
    invoke-static {v3}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManagerService;->getNotificationTypeOf(Landroid/app/Notification;)Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    move-result-object v4

    invoke-static {v3}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManagerService;->getTaskIdOf(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->notify(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-static {v3}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static startService()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->NOTIFICATION_ID_PRIMARY:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    invoke-virtual {v2}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->getNotificationTypeManagerServiceClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "OPERATION_KEY"

    const-string v2, "OPERATION_START"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static stopService()V
    .locals 6

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->values()[Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    new-instance v4, Landroid/content/Intent;

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->getNotificationTypeManagerServiceClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "fail to stop service: maybe service didn\'t start"

    invoke-static {v3}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
