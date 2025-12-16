.class public final Lp/f;
.super Lp/a;
.source "SourceFile"


# virtual methods
.method public final a(Lp/h;Lp/d;)Z
    .locals 1

    sget-object p0, Lp/d;->b:Lp/d;

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lp/h;->b:Lp/d;

    if-ne v0, p2, :cond_0

    iput-object p0, p1, Lp/h;->b:Lp/d;

    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b(Lp/h;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lp/h;->a:Ljava/lang/Object;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Lp/h;->a:Ljava/lang/Object;

    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final c(Lp/h;Lp/g;Lp/g;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lp/h;->c:Lp/g;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Lp/h;->c:Lp/g;

    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final n(Lp/g;Lp/g;)V
    .locals 0

    iput-object p2, p1, Lp/g;->b:Lp/g;

    return-void
.end method

.method public final o(Lp/g;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lp/g;->a:Ljava/lang/Thread;

    return-void
.end method
