.class public abstract Landroidx/databinding/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/databinding/j;


# instance fields
.field private transient mCallbacks:Landroidx/databinding/p;


# virtual methods
.method public addOnPropertyChangedCallback(Landroidx/databinding/i;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/databinding/a;->mCallbacks:Landroidx/databinding/p;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/databinding/p;

    sget-object v1, Landroidx/databinding/p;->h:Landroidx/databinding/o;

    invoke-direct {v0, v1}, Landroidx/databinding/c;-><init>(Landroidx/databinding/b;)V

    iput-object v0, p0, Landroidx/databinding/a;->mCallbacks:Landroidx/databinding/p;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroidx/databinding/a;->mCallbacks:Landroidx/databinding/p;

    invoke-virtual {p0, p1}, Landroidx/databinding/c;->a(Ljava/lang/Object;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public notifyChange()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/databinding/a;->mCallbacks:Landroidx/databinding/p;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroidx/databinding/c;->c(ILjava/lang/Object;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public notifyPropertyChanged(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/databinding/a;->mCallbacks:Landroidx/databinding/p;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p1, p0}, Landroidx/databinding/c;->c(ILjava/lang/Object;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public removeOnPropertyChangedCallback(Landroidx/databinding/i;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/databinding/a;->mCallbacks:Landroidx/databinding/p;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p1}, Landroidx/databinding/c;->f(Ljava/lang/Object;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
