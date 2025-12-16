.class public Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationDismissReceiver;
.super Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final KEY_NOTIFICATION_TYPE:Ljava/lang/String; = "notificationType"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public handle()V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "notificationType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    if-nez v0, :cond_0

    const-string p0, "notificationType is null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->isSet()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->cancel(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)V

    :cond_1
    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->needsRemind()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTimer;

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTimer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTimer;->start(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)V

    :cond_2
    return-void
.end method
