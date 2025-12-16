.class interface abstract Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManagerService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManagerService$Operation;
    }
.end annotation


# static fields
.field public static final KEY_NOTIFICATION_ID:Ljava/lang/String; = "NOTIFICATION_ID_KEY"

.field public static final KEY_NOTIFICATION_TYPE:Ljava/lang/String; = "com.wssyncmldm.NOTIFICATION_TYPE_KEY"

.field public static final KEY_TASK_ID:Ljava/lang/String; = "com.wssyncmldm.TASK_ID_KEY"


# direct methods
.method public static getNotificationTypeOf(Landroid/app/Notification;)Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "com.wssyncmldm:bundle"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "bundle should not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/idm/fotaagent/BundleWrapper;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/BundleWrapper;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/BundleWrapper;->getNotificationType()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    move-result-object p0

    const-string v0, "notificationType should not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getTaskIdOf(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "com.wssyncmldm:bundle"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "bundle should not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/idm/fotaagent/BundleWrapper;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/BundleWrapper;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/BundleWrapper;->getTaskId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "taskId should not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
