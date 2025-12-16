.class public Lcom/idm/fotaagent/enabler/ui/notification/manager/StubNotificationTypeManagerService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManagerService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

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

    const-string p0, "should not be called"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

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
    .locals 0

    const-string p1, "should not be called"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    invoke-virtual {p0, p3}, Landroid/app/Service;->stopSelf(I)V

    const/4 p0, 0x2

    return p0
.end method
