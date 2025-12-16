.class public Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId$SecondaryNotificationService;
.super Lcom/idm/fotaagent/enabler/ui/notification/manager/RealNotificationTypeManagerService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecondaryNotificationService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/RealNotificationTypeManagerService;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    invoke-super {p0, p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/RealNotificationTypeManagerService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onCreate()V
    .locals 0

    invoke-super {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/RealNotificationTypeManagerService;->onCreate()V

    return-void
.end method

.method public bridge synthetic onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/RealNotificationTypeManagerService;->onDestroy()V

    return-void
.end method

.method public bridge synthetic onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/idm/fotaagent/enabler/ui/notification/manager/RealNotificationTypeManagerService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method
