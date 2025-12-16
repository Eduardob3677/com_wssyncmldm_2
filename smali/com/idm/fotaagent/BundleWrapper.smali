.class public Lcom/idm/fotaagent/BundleWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY_BUNDLE:Ljava/lang/String; = "com.wssyncmldm:bundle"

.field private static final KEY_CONSUMER:Ljava/lang/String; = "consumer"

.field private static final KEY_DIALOG_TYPE:Ljava/lang/String; = "dialogType"

.field private static final KEY_NOTIFICATION_TYPE:Ljava/lang/String; = "notificationType"

.field private static final KEY_RESOURCE_ID:Ljava/lang/String; = "resourceId"

.field private static final KEY_TASK_ID:Ljava/lang/String; = "taskId"


# instance fields
.field private final bundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/BundleWrapper;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/BundleWrapper;->bundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public build()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    iget-object p0, p0, Lcom/idm/fotaagent/BundleWrapper;->bundle:Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getConsumer()Lcom/idm/fotaagent/SerializableConsumer;
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/BundleWrapper;->bundle:Landroid/os/Bundle;

    const-string v0, "consumer"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/SerializableConsumer;

    return-object p0
.end method

.method public getDialogType()Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/BundleWrapper;->bundle:Landroid/os/Bundle;

    const-string v0, "dialogType"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    return-object p0
.end method

.method public getNotificationType()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/BundleWrapper;->bundle:Landroid/os/Bundle;

    const-string v0, "notificationType"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    return-object p0
.end method

.method public getResourceId()I
    .locals 2

    iget-object p0, p0, Lcom/idm/fotaagent/BundleWrapper;->bundle:Landroid/os/Bundle;

    const-string v0, "resourceId"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/BundleWrapper;->bundle:Landroid/os/Bundle;

    const-string v0, "taskId"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setConsumer(Lcom/idm/fotaagent/SerializableConsumer;)Lcom/idm/fotaagent/BundleWrapper;
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/BundleWrapper;->bundle:Landroid/os/Bundle;

    const-string v1, "consumer"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object p0
.end method

.method public setDialogType(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;)Lcom/idm/fotaagent/BundleWrapper;
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/BundleWrapper;->bundle:Landroid/os/Bundle;

    const-string v1, "dialogType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object p0
.end method

.method public setNotificationType(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)Lcom/idm/fotaagent/BundleWrapper;
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/BundleWrapper;->bundle:Landroid/os/Bundle;

    const-string v1, "notificationType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object p0
.end method

.method public setResourceId(I)Lcom/idm/fotaagent/BundleWrapper;
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/BundleWrapper;->bundle:Landroid/os/Bundle;

    const-string v1, "resourceId"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setTaskId(Ljava/lang/String;)Lcom/idm/fotaagent/BundleWrapper;
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/BundleWrapper;->bundle:Landroid/os/Bundle;

    const-string v1, "taskId"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
