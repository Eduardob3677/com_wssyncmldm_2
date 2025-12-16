.class public final synthetic LY0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:LY0/h;


# direct methods
.method public synthetic constructor <init>(LY0/h;I)V
    .locals 0

    iput p2, p0, LY0/g;->c:I

    iput-object p1, p0, LY0/g;->d:LY0/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, LY0/g;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LY0/g;->d:LY0/h;

    monitor-enter p0

    :try_start_0
    iget v0, p0, LY0/h;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Timed out while binding"

    invoke-virtual {p0, v1, v0}, LY0/h;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :goto_0
    return-void

    :goto_1
    monitor-exit p0

    throw v0

    :pswitch_0
    iget-object v0, p0, LY0/g;->d:LY0/h;

    :goto_2
    monitor-enter v0

    :try_start_1
    iget p0, v0, LY0/h;->a:I

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    monitor-exit v0

    goto :goto_3

    :catchall_1
    move-exception p0

    goto/16 :goto_4

    :cond_1
    iget-object p0, v0, LY0/h;->d:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, LY0/h;->c()V

    monitor-exit v0

    :goto_3
    return-void

    :cond_2
    iget-object p0, v0, LY0/h;->d:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LY0/i;

    iget-object v2, v0, LY0/h;->e:Landroid/util/SparseArray;

    iget v3, p0, LY0/i;->a:I

    invoke-virtual {v2, v3, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, v0, LY0/h;->f:LY0/j;

    iget-object v2, v2, LY0/j;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, LG/a;

    const/4 v4, 0x3

    invoke-direct {v3, v0, v4, p0}, LG/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1e

    invoke-interface {v2, v3, v5, v6, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v2, "MessengerIpcClient"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x8

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Sending "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MessengerIpcClient"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, v0, LY0/h;->f:LY0/j;

    iget-object v2, v2, LY0/j;->d:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    iget-object v3, v0, LY0/h;->b:Landroid/os/Messenger;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    iget v5, p0, LY0/i;->c:I

    iput v5, v4, Landroid/os/Message;->what:I

    iget v5, p0, LY0/i;->a:I

    iput v5, v4, Landroid/os/Message;->arg1:I

    iput-object v3, v4, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v5, "oneWay"

    invoke-virtual {p0}, LY0/i;->b()Z

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "pkg"

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data"

    iget-object p0, p0, LY0/i;->d:Landroid/os/Bundle;

    invoke-virtual {v3, v2, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v4, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_2
    iget-object p0, v0, LY0/h;->c:LA3/D;

    iget-object v2, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast v2, Landroid/os/Messenger;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto/16 :goto_2

    :cond_4
    iget-object p0, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast p0, LY0/e;

    if-eqz p0, :cond_5

    iget-object p0, p0, LY0/e;->c:Landroid/os/Messenger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto/16 :goto_2

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v2, "Both messengers are null"

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, LY0/h;->a(ILjava/lang/String;)V

    goto/16 :goto_2

    :goto_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :pswitch_1
    const/4 v0, 0x2

    const-string v1, "Service disconnected"

    iget-object p0, p0, LY0/g;->d:LY0/h;

    invoke-virtual {p0, v0, v1}, LY0/h;->a(ILjava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
