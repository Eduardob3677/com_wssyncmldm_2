.class public final synthetic Lcom/idm/fotaagent/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/idm/fotaagent/a;->c:I

    iput-object p1, p0, Lcom/idm/fotaagent/a;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcom/idm/fotaagent/a;->e:Ljava/lang/Object;

    iput-object p3, p0, Lcom/idm/fotaagent/a;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/idm/fotaagent/a;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/idm/fotaagent/a;->d:Ljava/lang/Object;

    check-cast v0, LL0/c;

    iget-object v1, p0, Lcom/idm/fotaagent/a;->e:Ljava/lang/Object;

    check-cast v1, Lf1/a;

    iget-object p0, p0, Lcom/idm/fotaagent/a;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v0, LL0/c;->a:Landroid/content/Context;

    invoke-static {v0}, LZ0/j;->v(Landroid/content/Context;)Landroidx/emoji2/text/p;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/emoji2/text/i;

    check-cast v2, Landroidx/emoji2/text/o;

    iget-object v3, v2, Landroidx/emoji2/text/o;->d:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-object p0, v2, Landroidx/emoji2/text/o;->f:Ljava/util/concurrent/Executor;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, v0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/i;

    new-instance v2, Landroidx/emoji2/text/k;

    invoke-direct {v2, v1, p0}, Landroidx/emoji2/text/k;-><init>(Lf1/a;Ljava/util/concurrent/ThreadPoolExecutor;)V

    invoke-interface {v0, v2}, Landroidx/emoji2/text/i;->a(Lf1/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "EmojiCompat font provider not available on this device."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    invoke-virtual {v1, v0}, Lf1/a;->Z(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/idm/fotaagent/a;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/FutureTask;

    iget-object v1, p0, Lcom/idm/fotaagent/a;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/BooleanSupplier;

    iget-object p0, p0, Lcom/idm/fotaagent/a;->d:Ljava/lang/Object;

    check-cast p0, Lcom/idm/fotaagent/InitExecutor;

    invoke-static {p0, v0, v1}, Lcom/idm/fotaagent/InitExecutor;->a(Lcom/idm/fotaagent/InitExecutor;Ljava/util/concurrent/FutureTask;Ljava/util/function/BooleanSupplier;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/idm/fotaagent/a;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/FutureTask;

    iget-object v1, p0, Lcom/idm/fotaagent/a;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/BooleanSupplier;

    iget-object p0, p0, Lcom/idm/fotaagent/a;->d:Ljava/lang/Object;

    check-cast p0, Lcom/idm/fotaagent/InitExecutor;

    invoke-static {p0, v0, v1}, Lcom/idm/fotaagent/InitExecutor;->d(Lcom/idm/fotaagent/InitExecutor;Ljava/util/concurrent/FutureTask;Ljava/util/function/BooleanSupplier;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
