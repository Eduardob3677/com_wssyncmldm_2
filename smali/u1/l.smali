.class public final Lu1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu1/m;
.implements Lu1/b;
.implements Lu1/d;
.implements Lu1/e;


# instance fields
.field public final synthetic c:I

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/J;Lu1/b;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lu1/l;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lu1/l;->e:Ljava/lang/Object;

    iput-object p1, p0, Lu1/l;->d:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lu1/l;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lu1/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lu1/l;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lu1/l;->e:Ljava/lang/Object;

    iput-object p1, p0, Lu1/l;->d:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lu1/l;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lu1/d;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lu1/l;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lu1/l;->e:Ljava/lang/Object;

    iput-object p1, p0, Lu1/l;->d:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lu1/l;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lu1/e;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lu1/l;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lu1/l;->e:Ljava/lang/Object;

    iput-object p1, p0, Lu1/l;->d:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lu1/l;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lu1/g;Lu1/n;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lu1/l;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu1/l;->d:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lu1/l;->e:Ljava/lang/Object;

    iput-object p3, p0, Lu1/l;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public H()V
    .locals 0

    iget-object p0, p0, Lu1/l;->f:Ljava/lang/Object;

    check-cast p0, Lu1/n;

    invoke-virtual {p0}, Lu1/n;->l()V

    return-void
.end method

.method public J(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lu1/l;->f:Ljava/lang/Object;

    check-cast p0, Lu1/n;

    invoke-virtual {p0, p1}, Lu1/n;->j(Ljava/lang/Exception;)V

    return-void
.end method

.method public L(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lu1/l;->f:Ljava/lang/Object;

    check-cast p0, Lu1/n;

    invoke-virtual {p0, p1}, Lu1/n;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public final onComplete(Lu1/h;)V
    .locals 4

    iget v0, p0, Lu1/l;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LG/a;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, LG/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object p0, p0, Lu1/l;->d:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    invoke-virtual {p1}, Lu1/h;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lu1/l;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lu1/l;->f:Ljava/lang/Object;

    check-cast v1, Lu1/e;

    if-nez v1, :cond_0

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lu1/l;->d:Ljava/util/concurrent/Executor;

    new-instance v1, LG/a;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v2, v3}, LG/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void

    :pswitch_1
    invoke-virtual {p1}, Lu1/h;->f()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, p1

    check-cast v0, Lu1/n;

    iget-boolean v0, v0, Lu1/n;->d:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lu1/l;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lu1/l;->f:Ljava/lang/Object;

    check-cast v1, Lu1/d;

    if-nez v1, :cond_2

    monitor-exit v0

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lu1/l;->d:Ljava/util/concurrent/Executor;

    new-instance v1, LG/a;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v2, v3}, LG/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_3
    :goto_3
    return-void

    :pswitch_2
    iget-object v0, p0, Lu1/l;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_4
    iget-object v1, p0, Lu1/l;->f:Ljava/lang/Object;

    check-cast v1, Lu1/c;

    if-nez v1, :cond_4

    monitor-exit v0

    goto :goto_4

    :catchall_2
    move-exception p0

    goto :goto_5

    :cond_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v0, p0, Lu1/l;->d:Ljava/util/concurrent/Executor;

    new-instance v1, LG/a;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v2, v3}, LG/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_4
    return-void

    :goto_5
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :pswitch_3
    check-cast p1, Lu1/n;

    iget-boolean p1, p1, Lu1/n;->d:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lu1/l;->e:Ljava/lang/Object;

    monitor-enter p1

    :try_start_6
    iget-object v0, p0, Lu1/l;->f:Ljava/lang/Object;

    check-cast v0, Lu1/b;

    if-nez v0, :cond_5

    monitor-exit p1

    goto :goto_7

    :catchall_3
    move-exception p0

    goto :goto_6

    :cond_5
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    iget-object p1, p0, Lu1/l;->d:Ljava/util/concurrent/Executor;

    new-instance v0, LB1/h;

    const/16 v1, 0x12

    invoke-direct {v0, v1, p0}, LB1/h;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_7

    :goto_6
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0

    :cond_6
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
