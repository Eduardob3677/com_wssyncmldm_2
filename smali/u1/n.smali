.class public final Lu1/n;
.super Lu1/h;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:LR3/m;

.field public c:Z

.field public volatile d:Z

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lu1/n;->a:Ljava/lang/Object;

    new-instance v0, LR3/m;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, LR3/m;->b:Ljava/lang/Object;

    iput-object v0, p0, Lu1/n;->b:LR3/m;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Executor;Lu1/c;)Lu1/n;
    .locals 1

    new-instance v0, Lu1/l;

    invoke-direct {v0, p1, p2}, Lu1/l;-><init>(Ljava/util/concurrent/Executor;Lu1/c;)V

    iget-object p1, p0, Lu1/n;->b:LR3/m;

    invoke-virtual {p1, v0}, LR3/m;->f(Lu1/m;)V

    invoke-virtual {p0}, Lu1/n;->m()V

    return-object p0
.end method

.method public final b(Ljava/util/concurrent/Executor;Lu1/d;)Lu1/n;
    .locals 1

    new-instance v0, Lu1/l;

    invoke-direct {v0, p1, p2}, Lu1/l;-><init>(Ljava/util/concurrent/Executor;Lu1/d;)V

    iget-object p1, p0, Lu1/n;->b:LR3/m;

    invoke-virtual {p1, v0}, LR3/m;->f(Lu1/m;)V

    invoke-virtual {p0}, Lu1/n;->m()V

    return-object p0
.end method

.method public final c(Ljava/util/concurrent/Executor;Lu1/e;)Lu1/n;
    .locals 1

    new-instance v0, Lu1/l;

    invoke-direct {v0, p1, p2}, Lu1/l;-><init>(Ljava/util/concurrent/Executor;Lu1/e;)V

    iget-object p1, p0, Lu1/n;->b:LR3/m;

    invoke-virtual {p1, v0}, LR3/m;->f(Lu1/m;)V

    invoke-virtual {p0}, Lu1/n;->m()V

    return-object p0
.end method

.method public final d()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lu1/n;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lu1/n;->f:Ljava/lang/Exception;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final e()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lu1/n;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lu1/n;->c:Z

    const-string v2, "Task is not yet complete"

    invoke-static {v2, v1}, Lc1/D;->g(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lu1/n;->d:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lu1/n;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

    iget-object p0, p0, Lu1/n;->e:Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance v1, Lu1/f;

    iget-object p0, p0, Lu1/n;->f:Ljava/lang/Exception;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task is already canceled."

    invoke-direct {p0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final f()Z
    .locals 2

    iget-object v0, p0, Lu1/n;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lu1/n;->c:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lu1/n;->d:Z

    if-nez v1, :cond_0

    iget-object p0, p0, Lu1/n;->f:Ljava/lang/Exception;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final g(Ljava/util/concurrent/Executor;Lu1/a;)Lu1/n;
    .locals 3

    new-instance v0, Lu1/n;

    invoke-direct {v0}, Lu1/n;-><init>()V

    new-instance v1, Lu1/k;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v0, v2}, Lu1/k;-><init>(Ljava/util/concurrent/Executor;Lu1/a;Lu1/n;I)V

    iget-object p1, p0, Lu1/n;->b:LR3/m;

    invoke-virtual {p1, v1}, LR3/m;->f(Lu1/m;)V

    invoke-virtual {p0}, Lu1/n;->m()V

    return-object v0
.end method

.method public final h(Ljava/util/concurrent/Executor;Lu1/a;)Lu1/n;
    .locals 3

    new-instance v0, Lu1/n;

    invoke-direct {v0}, Lu1/n;-><init>()V

    new-instance v1, Lu1/k;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, v0, v2}, Lu1/k;-><init>(Ljava/util/concurrent/Executor;Lu1/a;Lu1/n;I)V

    iget-object p1, p0, Lu1/n;->b:LR3/m;

    invoke-virtual {p1, v1}, LR3/m;->f(Lu1/m;)V

    invoke-virtual {p0}, Lu1/n;->m()V

    return-object v0
.end method

.method public final i(Ljava/util/concurrent/Executor;Lu1/g;)Lu1/n;
    .locals 2

    new-instance v0, Lu1/n;

    invoke-direct {v0}, Lu1/n;-><init>()V

    new-instance v1, Lu1/l;

    invoke-direct {v1, p1, p2, v0}, Lu1/l;-><init>(Ljava/util/concurrent/Executor;Lu1/g;Lu1/n;)V

    iget-object p1, p0, Lu1/n;->b:LR3/m;

    invoke-virtual {p1, v1}, LR3/m;->f(Lu1/m;)V

    invoke-virtual {p0}, Lu1/n;->m()V

    return-object v0
.end method

.method public final j(Ljava/lang/Exception;)V
    .locals 4

    const-string v0, "Exception must not be null"

    invoke-static {v0, p1}, Lc1/D;->f(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lu1/n;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lu1/n;->c:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "Task is already complete"

    invoke-static {v3, v1}, Lc1/D;->g(Ljava/lang/String;Z)V

    iput-boolean v2, p0, Lu1/n;->c:Z

    iput-object p1, p0, Lu1/n;->f:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lu1/n;->b:LR3/m;

    invoke-virtual {p1, p0}, LR3/m;->e(Lu1/h;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final k(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lu1/n;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lu1/n;->c:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "Task is already complete"

    invoke-static {v3, v1}, Lc1/D;->g(Ljava/lang/String;Z)V

    iput-boolean v2, p0, Lu1/n;->c:Z

    iput-object p1, p0, Lu1/n;->e:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lu1/n;->b:LR3/m;

    invoke-virtual {p1, p0}, LR3/m;->e(Lu1/h;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lu1/n;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lu1/n;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lu1/n;->c:Z

    iput-boolean v1, p0, Lu1/n;->d:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lu1/n;->b:LR3/m;

    invoke-virtual {v0, p0}, LR3/m;->e(Lu1/h;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lu1/n;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lu1/n;->c:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lu1/n;->b:LR3/m;

    invoke-virtual {v0, p0}, LR3/m;->e(Lu1/h;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
