.class Lcom/idm/fotaagent/InitExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idm/fotaagent/InitExecutor;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idm/fotaagent/InitExecutor;


# direct methods
.method public constructor <init>(Lcom/idm/fotaagent/InitExecutor;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/InitExecutor$1;->this$0:Lcom/idm/fotaagent/InitExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    const-string p1, ""

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/idm/fotaagent/InitExecutor$1;->this$0:Lcom/idm/fotaagent/InitExecutor;

    check-cast p2, Lcom/idm/fotaagent/InitExecutor$InitService$LocalBinder;

    invoke-virtual {p2}, Lcom/idm/fotaagent/InitExecutor$InitService$LocalBinder;->getService()Lcom/idm/fotaagent/InitExecutor$InitService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/idm/fotaagent/InitExecutor;->access$002(Lcom/idm/fotaagent/InitExecutor;Lcom/idm/fotaagent/InitExecutor$InitService;)Lcom/idm/fotaagent/InitExecutor$InitService;

    iget-object p0, p0, Lcom/idm/fotaagent/InitExecutor$1;->this$0:Lcom/idm/fotaagent/InitExecutor;

    invoke-static {p0}, Lcom/idm/fotaagent/InitExecutor;->access$100(Lcom/idm/fotaagent/InitExecutor;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string p1, ""

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/idm/fotaagent/InitExecutor$1;->this$0:Lcom/idm/fotaagent/InitExecutor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/idm/fotaagent/InitExecutor;->access$002(Lcom/idm/fotaagent/InitExecutor;Lcom/idm/fotaagent/InitExecutor$InitService;)Lcom/idm/fotaagent/InitExecutor$InitService;

    iget-object p1, p0, Lcom/idm/fotaagent/InitExecutor$1;->this$0:Lcom/idm/fotaagent/InitExecutor;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {p1, v0}, Lcom/idm/fotaagent/InitExecutor;->access$102(Lcom/idm/fotaagent/InitExecutor;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    iget-object p1, p0, Lcom/idm/fotaagent/InitExecutor$1;->this$0:Lcom/idm/fotaagent/InitExecutor;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {p1, v0}, Lcom/idm/fotaagent/InitExecutor;->access$202(Lcom/idm/fotaagent/InitExecutor;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    iget-object p0, p0, Lcom/idm/fotaagent/InitExecutor$1;->this$0:Lcom/idm/fotaagent/InitExecutor;

    invoke-static {p0}, Lcom/idm/fotaagent/InitExecutor;->access$200(Lcom/idm/fotaagent/InitExecutor;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
