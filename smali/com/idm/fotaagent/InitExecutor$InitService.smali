.class public Lcom/idm/fotaagent/InitExecutor$InitService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/InitExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/InitExecutor$InitService$LocalBinder;
    }
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private localBinder:Lcom/idm/fotaagent/InitExecutor$InitService$LocalBinder;

.field private looper:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/os/Message;)Z
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/InitExecutor$InitService;->lambda$onCreate$0(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$onCreate$0(Landroid/os/Message;)Z
    .locals 0

    const-string p0, "handleMessage() does not support"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/InitExecutor$InitService;->localBinder:Lcom/idm/fotaagent/InitExecutor$InitService$LocalBinder;

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/InitExecutor$InitService$LocalBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/idm/fotaagent/InitExecutor$InitService$LocalBinder;-><init>(Lcom/idm/fotaagent/InitExecutor$InitService;Lcom/idm/fotaagent/InitExecutor$1;)V

    iput-object v0, p0, Lcom/idm/fotaagent/InitExecutor$InitService;->localBinder:Lcom/idm/fotaagent/InitExecutor$InitService$LocalBinder;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "InitService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/InitExecutor$InitService;->looper:Landroid/os/Looper;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/idm/fotaagent/InitExecutor$InitService;->looper:Landroid/os/Looper;

    new-instance v2, Lcom/idm/fotaagent/d;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/idm/fotaagent/InitExecutor$InitService;->handler:Landroid/os/Handler;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/fotaagent/InitExecutor$InitService;->looper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-static {}, Lcom/idm/fotaagent/InitExecutor;->get()Lcom/idm/fotaagent/InitExecutor;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/fotaagent/InitExecutor;->access$200(Lcom/idm/fotaagent/InitExecutor;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/idm/fotaagent/InitExecutor$InitService;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/idm/fotaagent/InitExecutor$InitService;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
